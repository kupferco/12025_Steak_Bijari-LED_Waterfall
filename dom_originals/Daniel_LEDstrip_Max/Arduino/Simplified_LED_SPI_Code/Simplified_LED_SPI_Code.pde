// Program for reading in a string of bytes from serial and sending them out to the addressable LED strip.

// Connections for SPI : Cable colours from the LED strip , Black = GND , Green = CLK = Arduino pin 13, Red = MOSI data = Arduino pin 11 
// When using large serial data transfers the serial buffer size needs to be adjusted within the HardwareSerial.cpp arduino library

#include <FastSPI_LED.h>

#define INTERFACE_NO 5             // Gives ID number fr the interface between 1 and 5, Interface #5 interfaces two sets of IR strip.

#define NUM_LEDS 192

#define STRIP_LENGTH 192             // quantity for 6 x 1m strips
#define MESSAGE_LENGTH (NUM_LEDS+2)  // length of sent data message 

//long strip_colors[NUM_LEDS]; //Each strip is made up of 2 x 1m strip lengths

int pointer=0;
int ledPin = 4; //On board LED

// interface ID

int serial_control_command;


// Sometimes chipsets wire in a backwards sort of way
struct CRGB { 
  unsigned char b; 
  unsigned char r; 
  unsigned char g; 
};
//struct CRGB { unsigned char r; unsigned char g; unsigned char b; };
struct CRGB *leds;

#define PIN 4

byte buffer[128];
byte bytes_available;
boolean read_good=false;

long reference_colors[5];
byte index_colours[8][3]={{0,0,0},{4,1,0},{8,2,0},{16,4,0},{32,8,0},{64,18,0},{127,36,0},{255,74,0}};

// ++++++++++++++++ SETUP +++++++++++++++++++++++++++

void setup()
{ 
 
  // start serial
  Serial.begin(115200);

  //SPI setup
  FastSPI_LED.setLeds(NUM_LEDS);

  FastSPI_LED.setChipset(CFastSPI_LED::SPI_WS2801);

  FastSPI_LED.setPin(PIN);

  FastSPI_LED.setDataRate(3);  // was 3
  FastSPI_LED.init();
  FastSPI_LED.start();

  FastSPI_LED.setDataRate(0);   //was 0
  leds = (struct CRGB*)FastSPI_LED.getRGBData(); 
}

//&&&&&&&&&&&&&&&&& MAIN &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

void loop() { 


while(1){

 memset(leds, 0, NUM_LEDS * 3);
 check_serial();
 if (read_good) {
  FastSPI_LED.show();
 }
}

}
//&&&&&&&&&&&&&&&&& End O'MAIN &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

//-----------------Los SubRoutinos---------------------------------


void check_serial (void) {
byte outbyte;
byte read_byte;
byte strip_number;
byte colour_val;
byte  x;
byte div;

   read_good=false;
   bytes_available=Serial.available();


  for (x = 0 ; ((x < 10) & (bytes_available < MESSAGE_LENGTH))  ; x++) {   // cycle 10 times to get full message length available in buffer     
    delay(1);
    bytes_available=Serial.available();
   }
   
   if (bytes_available < MESSAGE_LENGTH){
     return;
   }
   
   pointer=0;
   while ((bytes_available-pointer)>=MESSAGE_LENGTH) {
    read_byte=Serial.read();
    pointer++;
    if (read_byte==250){
      strip_number=Serial.read();
      pointer++;
      if ((bytes_available-pointer) >= STRIP_LENGTH) {     // check buffer contains full message
        read_good=true;
        for (x = 0 ; x < (STRIP_LENGTH) ; x++) {
             colour_val= Serial.read();
             pointer++;
  
             if (colour_val< 8) {                        // if data is in range allocate colours
              leds[x].r = index_colours[colour_val][1];   // set red byte
              leds[x].g = index_colours[colour_val][2];   // set green byte
              leds[x].b = index_colours[colour_val][0];   // set blue byte
             } else {
       //        data is outside the 0-8 colour range
             }
        }

      }else{
        //Serial.flush();
        break;
      }
    }
  //  pointer++;
  }
//Serial.flush();
}
  
//--------------------------------------------------------------
void pingLED(void) {
   digitalWrite(ledPin, HIGH);   // set the LED on
    delay(5);                  // wait for a second
    digitalWrite(ledPin, LOW);    // set the LED off
    delay(5);                  // wait for a second
}

//--------------------------------------------------------------


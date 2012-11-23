// One 2 One for addressable LED strip

#define SENSOR1  8
#define SENSOR2  9
#define SENSOR3  10
#define TWO_STRIP 64 //length of two strips
#define STRIP_LENGTH 192 //32 LEDs on this strip
#define MESSAGE_LENGTH 194
#define NUM_STRIPS 4// Maximum number of LED strips of 64 leds

int SDI1 = 2; //Red wire (not the red 5V wire!)
int SDI2=4;
int SDI3=5;

int CKI = 3; //Green wire
int ledPin = 13; //On board LED
byte buffer[194];
int pointer=0;
int colorpointer=0;
int fresh_buffer_size;
int bytes_available;
boolean read_good=false;

//shift in variables
int latchPin = 9;
int dataPin = 7;
int clockPin = 8;

byte switchVar1 = 72;  //01001000
byte switchVar2 = 159; //10011111
byte outputVal[4]={0,0,0,0};

long strip_colors[STRIP_LENGTH]; //Each strip is made up of 2 x 1m strip lengths
long reference_colors[32];

//---------------------- SETUP---------------------------------------------------------

void setup() {
  Serial.begin(115200);
  pinMode(SENSOR1,INPUT);
  pinMode(SENSOR2,INPUT);
  pinMode(SENSOR3,INPUT);
  pinMode(SDI1, OUTPUT);
  pinMode(SDI2, OUTPUT);
  pinMode(SDI3, OUTPUT);
  pinMode(CKI, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(latchPin, OUTPUT);        //define shift-in pin modes
  pinMode(clockPin, OUTPUT); 
  pinMode(dataPin, INPUT);
  reference_colors[0] = 0; //Black
 //  reference_colors[1] = 0xF26F21; //Bright Red
  reference_colors[1] = 0x040100; //index colour 1
  reference_colors[2] = 0x080200; //index colour 2
   reference_colors[3] = 0x100400; //index colour 3
  reference_colors[4] = 0x200900; //index colour 4
  reference_colors[5] = 0x401200; //index colour 5
  reference_colors[6]= 0x7F2400; //index colour 6
  reference_colors[7]= 0xFF4A00; //index colour 7  
  reference_colors[11] = 0xFF0000; //Bright Red
  reference_colors[12] = 0x00FF00; //Bright Green
  reference_colors[13] = 0x0000FF; //Bright Blue
   reference_colors[14] = 0xFFFF00; //Bright Red
  reference_colors[15] = 0x00FFFF; //Bright Green
  reference_colors[16] = 0xFF00FF; //Bright Blue
  reference_colors[17]=0xFFFFFF; //white
  for (int x = 0; x < MESSAGE_LENGTH; x++)
   buffer[x]=0;
  
  //Clear out the array
  for(int x = 0 ; x < STRIP_LENGTH ; x++) {
   strip_colors[x] =reference_colors[1];
  }
}

//----------------------------MAIN--------------------------------------------

void loop() {

  while(1){ //Do nothing

   readInput();
   check_serial();
   if (read_good=true){
     post_frame(); //Push the current color frame to the strip
   }

  }
}

//----------------------------End Of MAIN--------------------------------------------


//Takes the current strip color array and pushes it out
void post_frame (void) {
  //Each LED requires 24 bits of data
  //MSB: R7, R6, R5..., G7, G6..., B7, B6... B0 
  //Once the 24 bits have been delivered, the IC immediately relays these bits to its neighbor
  //Pulling the clock low for 500us or more causes the IC to post the data.

  for(int LED_number = 0 ; LED_number < TWO_STRIP ; LED_number++) {
    long this_led_color1 = strip_colors[LED_number];     //24 bits of color data
    long this_led_color2 = strip_colors[LED_number+64];  //24 bits of color data
    long this_led_color3 = strip_colors[LED_number+128]; //24 bits of color data

    for(byte color_bit = 23 ; color_bit != 255 ; color_bit--) {
      //Feed color bit 23 first (red data MSB)
      
      digitalWrite(CKI, LOW); //Only change data when clock is low
      
      long mask = 1L << color_bit;
      //The 1'L' forces the 1 to start as a 32 bit number, otherwise it defaults to 16-bit.
      
      if(this_led_color1 & mask) 
        digitalWrite(SDI1, HIGH);
      else
        digitalWrite(SDI1, LOW);
  
    if(this_led_color2 & mask) 
       digitalWrite(SDI2, HIGH);
     else
     digitalWrite(SDI2, LOW);
        
   if(this_led_color3 & mask) 
      digitalWrite(SDI3, HIGH);
    else
      digitalWrite(SDI3, LOW);
        
      digitalWrite(CKI, HIGH); //Data is latched when clock goes high
    }
  }

  //Pull clock low to put strip into reset/post mode
  digitalWrite(CKI, LOW);
  delayMicroseconds(500); //Wait for 500us to go into reset
}

//--------------------------------------------------------------
void check_serial (void) {
byte outbyte;
byte read_byte;
byte strip_number;
byte colour_val;
byte  x;
byte div;


   read_good=false;
   bytes_available=Serial.available();
   //Serial.write(bytes_available);
   for (x = 0 ; ((x < 10) ||  (bytes_available < MESSAGE_LENGTH))  ; x++) {   // cycle 10 times to get full message length available in buffer
 //  while ((bytes_available)<MESSAGE_LENGTH) {      
     delay(2);
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
  
             if (colour_val< 8) {                        // allocate colours
             strip_colors[x] = reference_colors[colour_val];
             } else {
               strip_colors[x] = reference_colors[0];
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
void pingLED(void){
   digitalWrite(ledPin, HIGH);   // set the LED on
    delay(5);                  // wait for a second
    digitalWrite(ledPin, LOW);    // set the LED off
    delay(5);                  // wait for a second
}

//--------------------------------------------------------------
void readInput(){
  
byte i;
  
  //Pulse the latch pin:
  //set it to 1 to collect parallel data
  digitalWrite(latchPin,1);
  //set it to 1 to collect parallel data, wait
  delayMicroseconds(20);
  //set it to 0 to transmit data serially  
  digitalWrite(latchPin,0);

  //the register attached to the chip comes in first 
  switchVar1 = shiftIn(dataPin, clockPin);
  switchVar2 = shiftIn(dataPin, clockPin);
  switchVar1 = switchVar1 ^ B11111111;        // invert switch values to give 1=on , 0=off
  switchVar2 = switchVar2 ^ B11111111;

  outputVal[0]=(switchVar1 & B00001111);     // convert switch values to be output as 4 bytes with 
  outputVal[1]=(switchVar1 & B11110000)>>4;  // data stored as lower 4 bits of each data byte
  outputVal[2]=(switchVar2 & B00001111);
  outputVal[3]=(switchVar2 & B11110000)>>4;
  Serial.write(140);                         // send control byte
  for (i=0; i<4; i++){                       // output the data byte array
   Serial.write(outputVal[i]);
  }
//   delay(5);
}


//--------------------------------------------------------------

byte shiftIn(int myDataPin, int myClockPin) { 
  int i;
  int temp = 0;
  int pinState;
  byte myDataIn = 0;

  pinMode(myClockPin, OUTPUT);
  pinMode(myDataPin, INPUT);

  for (i=7; i>=0; i--)
  {
    digitalWrite(myClockPin, 0);
    delayMicroseconds(2);
    temp = digitalRead(myDataPin);
    if (temp) {
      pinState = 1;
      //set the bit to 0 no matter what
      myDataIn = myDataIn | (1 << i);
    }
    else {
      pinState = 0;
    }
    digitalWrite(myClockPin, 1);

  }
  return myDataIn;
}

//--------------------------------------------------------------

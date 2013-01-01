#include <FastSPI_LED.h>

#define NUM_LEDS 192
//#define STRIP_LENGTH 32
//#define MESSAGE_LENGTH ((NUM_LEDS/8)+2)


// Sometimes chipsets wire in a backwards sort of way
//struct CRGB { unsigned char b; unsigned char r; unsigned char g; };
struct CRGB { unsigned char r; unsigned char g; unsigned char b; };
struct CRGB *leds;

//#define PIN 13

int onSpeed = 75;
int offSpeed = -20;
int maxDimValue = 255;
int minDimValue = 0;

byte dimArray[NUM_LEDS];
float lastTick = 0;
boolean blinkState = false;
boolean serialReadDone = false;


// serialRead = 0
// deployInstructoin = 1
// requestNext = 2
// handShake = 3
// blinkAll = 4
byte state = 0;

void setup()
{
  FastSPI_LED.setLeds(NUM_LEDS);
 // FastSPI_LED.setChipset(CFastSPI_LED::SPI_SM16716);
  //FastSPI_LED.setChipset(CFastSPI_LED::SPI_TM1809);
  //FastSPI_LED.setChipset(CFastSPI_LED::SPI_LPD6803);
  //FastSPI_LED.setChipset(CFastSPI_LED::SPI_HL1606);
  //FastSPI_LED.setChipset(CFastSPI_LED::SPI_595);
  FastSPI_LED.setChipset(CFastSPI_LED::SPI_WS2801);

//  FastSPI_LED.setPin(PIN);

  FastSPI_LED.setDataRate(3);
  FastSPI_LED.init();
  FastSPI_LED.start();

  leds = (struct CRGB*)FastSPI_LED.getRGBData();  
    
  Serial.begin( 115200 );
  Serial.println( "reset" );
  
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    dimArray[i] = 0;
//    stateArray[i] = false;
  }
  
    Serial.println( "done" );
  

}

void loop() {
  switch ( state )
  {
    case 0 :
      serialRead();
      break;
    case 1 :
      deployInstruction();
      break;
    case 4:
      blinkAll();
      break;
    case 5 :
      increment();
      break;
    case 6 :
      bitwiseConversionTest();
      break;
  }
}

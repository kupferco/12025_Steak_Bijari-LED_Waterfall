#include <FastSPI_LED.h>

#define NUM_LEDS 64
#define SERIAL_CHANNELS 8

// Sometimes chipsets wire in a backwards sort of way
struct CRGB { unsigned char b; unsigned char r; unsigned char g; };
// struct CRGB { unsigned char r; unsigned char g; unsigned char b; };
struct CRGB *leds;

//#define PIN 13

int onSpeed = 75;
int offSpeed = -10;
int maxDimValue = 255;
int minDimValue = 0;

int dimArray[NUM_LEDS];
boolean stateArray[NUM_LEDS];
int lastTick = 0;
boolean blinkState = false;



int state = 0;

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
  
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    dimArray[i] = 0;
    stateArray[i] = false;
  }
  
  Serial.begin( 115200 );
  Serial.println( "reset" );

}

void loop() {
  switch ( state )
  {
    case 0 :
      serialRead();
      break;
    case 1 :
      blinkAll();
      break;
    case 2 :
      increment();
      break;
    case 3 :
      bitwiseConversionTest();
      break;
  }
}
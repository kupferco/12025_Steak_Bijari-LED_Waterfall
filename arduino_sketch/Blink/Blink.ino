#include <LEDFade.h>
#include <FastSPI_LED.h>

#define NUM_LEDS 150

// Sometimes chipsets wire in a backwards sort of way
struct CRGB { unsigned char b; unsigned char r; unsigned char g; };
// struct CRGB { unsigned char r; unsigned char g; unsigned char b; };
struct CRGB *leds;

//#define PIN 13

LEDFade fade0 = LEDFade();
LEDFade fade1 = LEDFade();
LEDFade fade2 = LEDFade();

int onSpeed = 1;
int offSpeed = -1;



int lastTick = 0;
boolean blinkState = false;

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


  fade0.init( 0, onSpeed, offSpeed );
  fade1.init( 1, onSpeed, offSpeed );
  fade2.init( 2, onSpeed, offSpeed );
  
  
  Serial.begin(9600);           // set up Serial library at 9600 bps
  Serial.println("restart"); 
}

int ledIndex = 55;

void loop(){
  
  if ( millis() - lastTick >= 1000 )
  {
    blinkState = !blinkState;
    if ( blinkState )
    {
      fade0.on();
    } else {
      fade0.off();
    }
    
//    fade1.off();
    
    lastTick = millis();
  }
  
  memset(leds, 0, NUM_LEDS * 3);
  leds[0].r = fade0.update();
  leds[1].r = fade1.update();
  leds[2].r = fade2.update();
  FastSPI_LED.show();
  
  Serial.println( blinkState );

}


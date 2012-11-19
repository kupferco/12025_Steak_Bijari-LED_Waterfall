import processing.serial.*;

/*

title:      12025 Steak Bijari - LED Waterfall
author:     DNKUPFER 2012-11-19

email:      daniel@steakstudio.com
site:       http://www.steakstudio.com

processing: 2.0b6

Copyright:  Steak Studio Ltd 2012

*/


// *****************************************************************************

// -----------------------------
// CONFIG
// -----------------------------

int[] window = { 1250, 740 };
int fingerWidth = 60;
color appColour = color( 255, 0, 255 );
color backgroundColour = color( 30 );

// FPS
int FPSSize = 12;
// x , y, FPS x
int[] FPSPos = { 30, 30 };


// INTERFACE
Boolean showFPS = true;
Boolean showId = true;
Boolean showFingerFeedback = true;

// *****************************************************************************

// *****************************************************************************

// -----------------------------
// VAR DECLARATION
// -----------------------------

int lastReading = 0;
int animation = 0;
PFont font;

// *****************************************************************************


void setup()
{
  size( window[0], window[1] );
  font = createFont("Helvetica-48.vlw", 32);
  
  initialiseSerial();
}

void draw()
{
  background( backgroundColour );
  
  drawSerial();
  
  interaction();
  
  fill( 255 );
  if ( showFPS )
  {
    textFont(font, FPSSize);
    text( "FPS :: " + fpsCounter(), FPSPos[0], FPSPos[1] );
  }

}

int fpsCounter()
{
  int fps = millis() - lastReading;
  lastReading = millis();
  return fps;
}

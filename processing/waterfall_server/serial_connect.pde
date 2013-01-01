/*

title:      12021 Jam - Samsung Drawing Water 1.0
author:     DNKUPFER 2012-10-10

email:      daniel@steakstudio.com
site:       http://www.steakstudio.com

Copyright:  Steak Studio Ltd 2012

*/

import processing.serial.*;

Serial arduinoController;

Boolean arduinoSerial = false;
Boolean sendSerialCommandGO = false;

void initialiseSerial()
{
  println(Serial.list());
  
  try {
    arduinoController = new Serial(this, Serial.list()[0], 115200 );
    println( arduinoController );
    arduinoSerial = true;
    println( "ARDUINO CONNECTED!!" );
  } catch ( Exception e ) {
    println( "NO ARDUINO SERIAL FOUND!!" );
    arduinoSerial = false;
  }
}

void drawSerial()
{
  sendSerialCommand();
}

int state = 0;
int counting = 0;


public static final char HEADER = '|';
public static final char TAG    = 'T';

void sendSerialCommand()
{
  int[] compiledGrid = compileGrid();
  
//  println( compiledGrid.length );
  
  arduinoController.write(HEADER);
  arduinoController.write(TAG);
  for ( int i=0; i < compiledGrid.length; i++ )
  {
    arduinoController.write( compiledGrid[i] );
  }
  
  sendSerialCommandGO = false;

// TEST SCRIPT
  
  println( "PROCESSING :: " + compiledGrid[1] );
//  arduinoController.write( 1 );
  
}

void serialEvent(Serial p)
{
  // handle incoming serial data
  String inString = arduinoController.readStringUntil('\n');
  if ( inString != null )
  {
      println( "ARDUINO:: " + inString );   // echo text string from Arduino
  }
}

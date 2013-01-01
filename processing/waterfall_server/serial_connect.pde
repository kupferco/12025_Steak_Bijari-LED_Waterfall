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
  if ( sendSerialCommandGO )
    sendSerialCommand();
  else
    readSerial();
}

int state = 0;
int counting = 0;
void sendSerialCommand()
{
  println("SEND SERIAL");
  int[] compiledGrid = compileGrid();
  
//  println( compiledGrid.length );
  
  arduinoController.write( 250 );
//  arduinoController.write( 0 );
  for ( int i=0; i < compiledGrid.length; i++ )
  {
    arduinoController.write( compiledGrid[i] );
  }
  
  sendSerialCommandGO = false;

// TEST SCRIPT
  
//  println( compiledGrid );
//  arduinoController.write( 1 );
  
}

void readSerial()
{
  int read0 = arduinoController.read();
  int read1 = arduinoController.read();
  
  if ( arduinoController.available() > 0 )
  {
    switch ( read0 )
    {
      case 3 :
        sendSerialCommandGO = true;
        break;
      case 1 :
        arduinoController.write( 2 );
        println( "2 SENT" );
        sendSerialCommandGO = true;
        break;
    }
  }
  
  println( "0 :: " + read0 );
  println( "1 :: " + read1 + "\n\n" );
}

//void handShake()
//{
//  if ( arduinoController.available() > 0 )
//  {
//    if ( arduinoController.read() == 251 )
//      state = 3;
//  }  
//}

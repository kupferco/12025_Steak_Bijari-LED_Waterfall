/*

title:      12025 Steak Bijari - LED Waterfall
author:     DNKUPFER 2012-11-19

email:      daniel@steakstudio.com
site:       http://www.steakstudio.com

Copyright:  Steak Studio Ltd 2012

*/



Serial arduinoController;

Boolean arduinoSerial = false;

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

void sendSerialCommand()
{
  if ( arduinoSerial )
    arduinoController.write( 255 );
}

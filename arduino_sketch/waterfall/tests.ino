int counter = 0;
void increment()
{
  stateArray[counter] = !stateArray[counter];
  if ( ++counter == NUM_LEDS )
    counter = 0;
  
  delay( 1 );
}

void blinkAll()
{
  if ( millis() - lastTick >= 1000 )
  {
    blinkState = !blinkState;
    if ( blinkState )
    {
      for ( int i = 0; i < NUM_LEDS; i++ )
      {
        stateArray[i] = true;
      }
      
    } else {
      for ( int i = 0; i < NUM_LEDS; i++ )
      {
        stateArray[i] = false;
      }
    }
    
    lastTick = millis();
  }
}

void bitwiseConversionTest()
{
  int output = 8;
  int id = 11;
  int bank = id / 8;
  int remainder = id % 8;
  
  
  boolean bitReadNow = boolean( bitRead(output, remainder) );
//  boolean bitReadNow = output >> remainder & 0x01;

  Serial.println( bitReadNow );
}


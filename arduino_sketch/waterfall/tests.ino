// 

int counter = 0;
void increment()
{
//  stateArray[counter] = !stateArray[counter];
//  if ( ++counter == NUM_LEDS )
//    counter = 0;
//  
//  delay( 1 );
}

void blinkAll()
{
//  if ( millis() - lastTick >= 1000 )
//  {
//      Serial.println( "tick" );
//    blinkState = !blinkState;
//    if ( blinkState )
//    {
//      for ( int i = 0; i < NUM_LEDS; i++ )
//      {
//        stateArray[i] = true;
//      }
//      
//    } else {
//      for ( int i = 0; i < NUM_LEDS; i++ )
//      {
//        stateArray[i] = false;
//      }
//    }
//    
//    lastTick = millis();
////    
//    memset(leds, 0, (NUM_LEDS) * 3);
////    for ( int i = 0; i < NUM_LEDS; i++ )
////    {
////      leds[i].r = ( stateArray[i] ) ? 1 : 0;
////    }
//    FastSPI_LED.show();
//    
//    delay( 1 );
//  
//    Serial.println( lastTick );
//  }
//

  if ( millis() - lastTick >= 100 )
  {
    blinkState = !blinkState;
    lastTick = millis();
  }
    
  
    
  memset(leds, 0, (NUM_LEDS) * 3);
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    leds[i].b = blinkState ? 1 : 0;
  }
  FastSPI_LED.show();
  
  delay( 1 );
  
  Serial.println( blinkState );
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


void deployInstruction()
{  
  memset(leds, 0, NUM_LEDS * 3);
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    leds[i].r = getValue( i );
  }
  FastSPI_LED.show();
  
  delay( 1 );
}



int getValue( int id )
{
  int bank = id / 8;
  int remainder = id % 8;
  
  stateArray[id] = boolean( bitRead(incomingArray[bank], remainder) );
  
  dimArray[id] += ( stateArray[id] ) ? onSpeed : offSpeed;

  if ( dimArray[id] > maxDimValue )
    dimArray[id] = maxDimValue;
  if ( dimArray[id] < minDimValue )
    dimArray[id] = minDimValue;  
    
  return dimArray[id];
}



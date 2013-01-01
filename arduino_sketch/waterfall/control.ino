void deployInstruction()
{
  memset(leds, 0, NUM_LEDS * 3);
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    leds[i].b = getValue( i );
//    Serial.write( getValue(0) );
  }
  FastSPI_LED.show();
  
  delay( 1 );
  //state = 2; // REQUEST NEXT INSTRUCTION
}

int getValue( int id )
{
  int bank = id / 8;
  int remainder = id % 8;
  
//  stateArray[id] = boolean( bitRead(incomingArray[bank], remainder) );
//  
//  dimArray[id] += ( stateArray[id] ) ? onSpeed : offSpeed;

  boolean itemState = boolean( bitRead(incomingArray[bank], remainder) );
//  itemState = false;

  int itemDim = int( dimArray[id] );
  itemDim += ( itemState ) ? onSpeed : offSpeed;

  if ( itemDim > maxDimValue )
    itemDim = maxDimValue;
  if ( itemDim < minDimValue )
    itemDim = minDimValue;
  
  dimArray[id] = byte( itemDim );
    
  return dimArray[id];
}



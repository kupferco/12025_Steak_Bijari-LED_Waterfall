void deployInstruction()
{
  memset(leds, 0, NUM_LEDS * 3);
  for ( int i = 0; i < NUM_LEDS; i++ )
  {
    leds[i].r = getValue( i );
    Serial.write( getValue(0) );
  }
  FastSPI_LED.show();
  
  delay( 1 );
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


//  dimArray[id] += ( itemState ) ? 75 : -10;
//
//  if ( dimArray[id] > 255 - 76 )
//    dimArray[id] = 255;
//  if ( dimArray[id] < 11 )
//    dimArray[id] = 0;
    
  return dimArray[id];
}



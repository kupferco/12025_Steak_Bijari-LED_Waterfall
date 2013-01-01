/*
  12021 Drawing Water
  Author: Daniel Kupfer
  user: dnkupfer (daniel@steakstudio.com)
  
 */

// ==================================================
/*



*/
// ==================================================

int lastRead = 0;
String incomingString = "";
int incomingIndex = 0;
int incomingArray[NUM_LEDS/8];

int pointer=0;
byte bytes_available;
boolean read_good=false;


void serialRead() {
  
//  newSerial();
//  return;
//  bytes_available=Serial.available();
//  for (int x = 0 ; ((x < 10) & (bytes_available < (NUM_LEDS/8)))  ; x++) {   // cycle 10 times to get full message length available in buffer     
//    delay(1);
//    bytes_available=Serial.available();
//   }

//  Serial.println( "RECEIVING SERIAL" );

//  Serial.write( 5 );
  
  if (Serial.available() > 0)
  {
    // CHECK IF READY
    int serialIN = Serial.read();
    if ( serialIN == 250 )
    {
      incomingIndex = 0;
      for ( byte x=0; x < (NUM_LEDS/8); x++ )
      {
        int incomingByte = Serial.read();
        incomingArray[incomingIndex++] = incomingByte;
      }
      state = 1; // deployInstruction()
      
      
      // TEST
//      memset(leds, 0, NUM_LEDS * 3);
//      leds[0].r = 0;
//      FastSPI_LED.show();
      
    } else {
//      state = 2;
//      delay( 10 );
    }
    
    
    delay(1);
    
  }
}


void requestNext()
{
  // REQUEST NEXT INSTRUCTION
  Serial.write( 3 );
  
  delay( 1 );
  state = 0; // SERIAL READ;
}


void handShake()
{
  Serial.write( 1 );
  delay(10);
  if ( Serial.available() > 0 )
  {
    // CHECK IF READY
    int serialHandShake = Serial.read();
    if( serialHandShake == 2 )
    {
      delay( 10 );
      state = 0;
    }
  }
}


void newSerial()
{
  if (Serial.available() > 0) {
    int serialRead = Serial.read();
    if ( serialRead == 250 )
    {
      for ( int i=0; i < (NUM_LEDS/8); i++ )
      {
        int incomingByte = Serial.read();
        incomingArray[i] = incomingByte;
      }
    }
  }
}


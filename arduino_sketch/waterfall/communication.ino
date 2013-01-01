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

#define HEADER        '|'
#define TAG           'T'
#define MESSAGE_BYTES ( (NUM_LEDS/8) + 2 )  // the total bytes in a message

void serialRead() {

  if ( Serial.available() >= MESSAGE_BYTES)
  {
    if( Serial.read() == HEADER)
    {
      char tag = Serial.read();
      if( tag == TAG )
      {
        incomingIndex = 0;
        for ( byte x=0; x < (NUM_LEDS/8); x++ )
        {
          int incomingByte = Serial.read();
          incomingArray[incomingIndex++] = incomingByte;
        }
        
        deployInstruction();
        
        Serial.println( incomingArray[1] );
      }
      else
      {
        Serial.print("got message with unknown tag ");
        Serial.println( tag );
      }
    }
  }
  
  delay( 1 );
}



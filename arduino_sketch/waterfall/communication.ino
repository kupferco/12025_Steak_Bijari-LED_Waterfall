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

void serialRead() {
  if (Serial.available() > 0) {
    int incomingByte = Serial.read();
    incomingArray[incomingIndex++] = incomingByte;    
    if ( incomingIndex == (NUM_LEDS/8) ) {
      
      lastRead = millis();
      incomingIndex = 0;
      deployInstruction();
//      Serial.write( incomingArray[0] );
    }
    
    
    
    // TESTING SCRIPT
//    if ( incomingByte == 1 )
//    {
//    } else {
//    }
  }  
}


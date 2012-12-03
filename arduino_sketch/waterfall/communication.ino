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
int incomingArray[SERIAL_CHANNELS];

void serialRead() {
  if (Serial.available() > 0) {
    int incomingByte = Serial.read();
    incomingArray[incomingIndex++] = incomingByte;
    
//    stateArray[incomingIndex] = boolean( incomingArray[incomingIndex] );
    
    if ( incomingIndex == SERIAL_CHANNELS ) {
      
      lastRead = millis();
      incomingIndex = 0;
      deployInstruction();
    }
    
    
    
    // TESTING SCRIPT
//    if ( incomingByte == 1 )
//    {
//    } else {
//    }
  }  
}


#include <MIDI.h>

MIDI_CREATE_DEFAULT_INSTANCE();

//define port to read control voltages
#define CV_VCO 1
#define CV_VCA 2
#define CV_VCF 3

//define MIDI channel
#define midiChannel 4

void handleNoteOn(byte channel, byte pitch, byte velocity)
{
  // clarify parameters?!
}

void handleNoteOff(byte channel, byte pitch, byte velocity)
{
  
}

void setup() {
  //set callbacks.
  MIDI.setHandleNoteOn(handleNoteOn);
  MIDI.setHandleNoteOff(handleNoteOff);
  
  MIDI.begin(MIDI_CHANNEL_OMNI);
}


void loop() { 
 MIDI.read();
}

int readControlVoltage(int pin)
{
  return analogRead(pin);
}


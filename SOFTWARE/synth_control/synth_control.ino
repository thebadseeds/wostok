/**
 *  Project: Wostok
 *  Author: Orell Garten
 *  License: MIT
 *  This program reads the control voltages set by the user of the synthesizer and outp
 */

#include <MIDI.h>

MIDI_CREATE_DEFAULT_INSTANCE();

//define ports to read information from
// still sample pins
#define ATTACK_TIME 1
#define DECAY_TIME 2
#define RELEASE_TIME 3
#define SUSTAIN_LEVEL 4


//define port to write information into synthesizer circuit
#define CV_OUT_VCO 10
#define CV_OUT_VCA 11
#define CV_OUT_VCF 12
#define SUSTAIN_VOLTAGE 13

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

  //listen to all channels for change
  MIDI.begin(MIDI_CHANNEL_OMNI);

  // set input and output ports
 pinMode(ATTACK_TIME, INPUT);
 pinMode(DECAY_TIME, INPUT);
 pinMode(RELEASE_TIME, INPUT);
 pinMode(SUSTAIN_LEVEL, INPUT);

 pinMode(CV_OUT_VCO, OUTPUT);
 pinMode(CV_OUT_VCA, OUTPUT);
 pinMode(CV_OUT_VCF, OUTPUT);
 pinMode(SUSTAIN_VOLTAGE, OUTPUT);
}


void loop() { 
 MIDI.read();
 delay(100);
}

/**
 * Writes voltage to pin if voltage is between 255 and 0 which should be ensured by "byte" anyway
 * Returns -1 in case of failure
 */
int outputControlVoltage(int pin, byte voltage)
{
  if(voltage <= 255 && voltage >= 0) {
    analogWrite(pin, voltage);
    return 0;
  } else {
    return -1;
  }
} 


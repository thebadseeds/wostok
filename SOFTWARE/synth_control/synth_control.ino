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
#define ADSR 9
/**
 * machine state    description
 *  0               IDLE
 *  1               NoteOn
 *  2               NoteOff
 */
static int machine_state = 0;

void writeADSR(byte state, int a, int d, int s, int r, int v, int l) 
{

  /**
   *    state   mode
   *    1       a -> attack
   *    2       d -> decay
   *    3       s -> sustain
   *    4       r -> release
   *    
   *    v -> velocity
   *    l -> sustain-level
   */
  
  static int PWM_level = 0;
  
  switch(state){
    case 1:
      for(int i = 0; i < 500; i++) {
        PWM_level = (v/a)*i;
        analogWrite(ADSR, PWM_level);
        delay(1);
      }
    break;
    case 2:
      for(int i = 0; i < 500; i++) {
       PWM_level = v - ((v-s)/d)*i;
       analogWrite(ADSR, PWM_level);
       delay(1);
      }
    break;
    case 3:
      PWM_level = a*l;
      analogWrite(ADSR, PWM_level);
    break;
    case 4:
      for(int i = 0; i < 500; i++) {
        PWM_level = a*l - ((a*l)/r)*i;
        analogWrite(ADSR, PWM_level);
        delay(1);
      }
    break;
    default: break;
  }
}


void handleNoteOn(byte channel, byte pitch, byte velocity)
{
  machine_state = 1;
  int a_time = analogRead(ATTACK_TIME);
  int d_time = analogRead(DECAY_TIME);
  int s_level = analogRead(SUSTAIN_LEVEL);
  int r_time = analogRead(RELEASE_TIME);

  writeADSR(1, a_time, d_time, s_level, r_time, velocity, a_time*s_level);
  writeADSR(2, a_time, d_time, s_level, r_time, velocity, a_time*s_level);
  writeADSR(3, a_time, d_time, s_level, r_time, velocity, a_time*s_level);
}

void handleNoteOff(byte channel, byte pitch, byte velocity)
{
  int a_time = analogRead(ATTACK_TIME);
  int d_time = analogRead(DECAY_TIME);
  int s_level = analogRead(SUSTAIN_LEVEL);
  int r_time = analogRead(RELEASE_TIME);
  
  writeADSR(4, a_time, d_time, s_level, r_time, velocity, a_time*s_level);
}

void setup() {
   //set callbacks
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
   pinMode(ADSR, OUTPUT);
}


void loop() { 

 handleNoteOn(1, 60, 60);
 handleNoteOff(1, 60, 60);
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


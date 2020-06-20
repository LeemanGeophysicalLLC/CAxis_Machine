#ifndef MAIN_H
#define MAIN_H

#include<errors.h>

// Pin Definitions
const uint8_t PIN_POLAR1_STEP = 13;
const uint8_t PIN_POLAR1_DIR = 12;
const uint8_t PIN_POLAR1_EN = 11;
const uint8_t PIN_POLAR2_STEP = 10;
const uint8_t PIN_POLAR2_DIR = 9;
const uint8_t PIN_POLAR2_EN = 8;
const uint8_t PIN_SAMPLE_STEP = 7;
const uint8_t PIN_SAMPLE_DIR = 6;
const uint8_t PIN_SAMPLE_EN = 5;
const uint8_t PIN_STAGE_STEP = 4;
const uint8_t PIN_STAGE_DIR = 3;
const uint8_t PIN_STAGE_EN = 2;

// Other Constants
const uint16_t SPEED_STEPS_PER_SECOND = 3200;
const uint16_t ACCELERATION_STEPS_PER_SECOND_PER_SECOND = 500;
const uint16_t PULSES_PER_REVOLUTION = 800;  // Motor microstepping
const uint16_t GEARBOX_REDUCTION = 117;  // Reduction in the worm drive
const uint8_t STEPS_PER_TENTH_DEGREE = 26; // Steps to 0.1 degree motion on machine

// Object creation
SpeedyStepper axis_steppers[4];

// Global State
// Holds position of each axis in degrees.
uint16_t axis_positions [4] = {0, 0, 0, 0};
char motors_enabled = 0;

//  Function Prototypes
void recordMovement(uint8_t, int16_t);
void cmdDisableMotors(int, char);
void cmdEnableMotors(int, char);
int16_t degreesToSteps(int16_t);
void cmdMoveAxis(int, char);
int16_t fastestWayToAngle(int16_t, int16_t);
void cmdMoveHome(int, char);
void cmdMultiAxisMove(int, char);
void cmdMoveLoad(int, char);
void cmdStatus(int, char);
uint16_t getPosition(int);
void cmdGetPosition(int, char);
void cmdSetPosition(int, char);
void setup(void);
void loop(void);
error_types multiAxisMove(uint16_t, uint16_t, uint16_t, uint16_t);
void error(error_types);


#endif //MAIN_H
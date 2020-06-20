/*
 * C-Axis Apparatus Controller Firmware
 * Leeman Geophysical LLC
 * (c) 2020 Distributed under terms of the MIT License
 * 
 * This sketch is designed for an Arduino Mega and controls the 4 axes of the C-Axis machine.
 * These axes are named and numbered:
 * 
 * Axis 0 - Polarizer 1
 * Axis 1 - Polarizer 2
 * Axis 2 - Sample
 * Axis ` - Stage (oblique tilt)
 * 
 * The sketch will disable all motors when it starts to help keep motors from needlessly
 * heating up. Each time the Arduino power is cycled (computer cycled, etc) the state will
 * reset to assume the current position of everything is 0 degrees. IMPORTANTLY the Arduino
 * is powered off computer USB, so that's what matteres, the contol box power only powers the
 * stepper motor drivers.
 * 
 * All movements are performed in the frame of the machine and in whole degrees. This means the
 * gearing, etc is taken into account here to make the commands easier to write and understand
 * on the computer controller side of things. The internal position counter is designed to
 * always wrap values such that the angle is between 0-359 (inclusive). For example, if the
 * motor starts at position 0 and is commanded to move 90 degrees 4 times it ends up back at
 * position 0. Same for negative direction movements.
 */

#include <Arduino.h>
#include <SpeedyStepper.h>
#include <Cmd.h>
#include <Main.h>
#include <errors.h>


void recordMovement(uint8_t axis_number, int16_t movement)
{
  /*
   * Record movement of an axis. Updates the global state position of the axis.
   * Limits range to 0-359 assuming that no single movement is over 360 degrees.
   */
  int16_t current_position = getPosition(axis_number);

  int16_t new_position = current_position + movement;

  if (new_position > 359)
  {
    new_position -= 360;
  }

  if (new_position < 0)
  {
    new_position += 360;
  }

  axis_positions[axis_number] = new_position;
}


void cmdDisableMotors(int arg_cnt, char **args)
{
  /*
   * Disables all of the steppers by taking the enable pin high
   */
  if (arg_cnt != 1)
  {
    Serial.println(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }
  digitalWrite(PIN_POLAR1_EN, HIGH);
  digitalWrite(PIN_POLAR2_EN, HIGH);
  digitalWrite(PIN_SAMPLE_EN, HIGH);
  digitalWrite(PIN_STAGE_EN, HIGH);
  motors_enabled = 0;
  error(ERROR_NO_ERROR);
}


void cmdEnableMotors(int arg_cnt, char **args)
{
  /*
   * Enables all of the steppers by taking the enable pin low
   */
  if (arg_cnt != 1)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }
  digitalWrite(PIN_POLAR1_EN, LOW);
  digitalWrite(PIN_POLAR2_EN, LOW);
  digitalWrite(PIN_SAMPLE_EN, LOW);
  digitalWrite(PIN_STAGE_EN, LOW);
  motors_enabled = 1;
  error(ERROR_NO_ERROR);
}


int16_t degreesToSteps(int16_t degrees)
{
  /*
   * Calculate the number of steps needed to move some number of degrees. Works with signed
   * values.
   */
  return degrees * 10 * STEPS_PER_TENTH_DEGREE;
}


void cmdJogAxis(int arg_cnt, char **args)
{
  /*
   * Move a single axis a given number of steps. See important note below!
   * 
   * Args are axis number (0-3) and counts to move the motor
   * 
   * IMPORTANTLY!! This DOES NOT update the position of the system as the steps are
   * far below a degree of movement. This should only be used during pre calibration
   * jogging!
   */
  if (arg_cnt != 3)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  if (!motors_enabled)
  {
    error(ERROR_NOT_ENABLED);
    return;
  }

  uint8_t axis_index = cmdStr2Num(args[1], 10);
  uint16_t move_steps = cmdStr2Num(args[2], 10);

  if ((axis_index < 0) || (axis_index > 3))
  {
    error(ERROR_INVALID_AXIS);
    return;
  }

  axis_steppers[axis_index].moveRelativeInSteps(move_steps);

  error(ERROR_NO_ERROR);
}

void cmdMoveAxis(int arg_cnt, char **args)
{
  /*
   * Move a single axis to a given position in whole degrees.
   * 
   * Args are axis number (0-3) and degrees to move the apparatus
   */
  if (arg_cnt != 3)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  if (!motors_enabled)
  {
    error(ERROR_NOT_ENABLED);
    return;
  }

  uint8_t axis_index = cmdStr2Num(args[1], 10);
  uint16_t commanded_position = cmdStr2Num(args[2], 10);

  if ((axis_index < 0) || (axis_index > 3))
  {
    error(ERROR_INVALID_AXIS);
    return;
  }

  if ((commanded_position < 0) || (commanded_position > 359))
  {
    error(ERROR_OUT_OF_RANGE);
    return;
  }

  uint16_t current_position = axis_positions[axis_index];
  int16_t movement = fastestWayToAngle(current_position, commanded_position);

  axis_steppers[axis_index].moveRelativeInSteps(degreesToSteps(movement));

  recordMovement(axis_index, movement);

  error(ERROR_NO_ERROR);
}


int16_t fastestWayToAngle(int16_t current, int16_t target)
{
  /*
   * Calcualtes the fastest way to get from here (current) to there (target) and keeps us
   * from going the long way around the circle. Returns the number of degrees (signed) that
   * should be moved.
   */
  int16_t delta = target - current;
  if (delta > 180)
  {
    return -360 + delta;
  }
  return delta;
}

void cmdMoveHome(int arg_cnt, char **args)
{
  /*
   * Move all axes to their home positions of 0 degrees
   */
  if (arg_cnt != 1)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  if (!motors_enabled)
  {
    error(ERROR_NOT_ENABLED);
    return;
  }

  error(multiAxisMove(0, 0, 0, 0));
}


void cmdMoveLoad(int arg_cnt, char **args)
{
  /*
   * Move all axes to the load position
   */
  if (arg_cnt != 1)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  if (!motors_enabled)
  {
    error(ERROR_NOT_ENABLED);
    return;
  }

  error(multiAxisMove(0, 0, 0, 45));
}


error_types multiAxisMove(uint16_t target_0, uint16_t target_1, uint16_t target_2, uint16_t target_3)
{
  // Do sample and stage, then polarizers. More than 2 at once seems to be no good.

  // First determine how far to move each axis
  int32_t steps_to_move [4] = {0, 0, 0, 0};
  uint16_t targets[4] = {target_0, target_1, target_2, target_3};
  for (int i=0; i<4; i++)
  {
    int16_t degrees_to_move = fastestWayToAngle(getPosition(i), targets[i]);
    recordMovement(i, degrees_to_move);
    steps_to_move[i] = degreesToSteps(degrees_to_move);
  }

  // Create the movements
  for (int i=0; i<4; i++)
  {
    axis_steppers[i].setupRelativeMoveInSteps(steps_to_move[i]);
  }

  // Block and loop until stage and sample movements are complete
  while ((!axis_steppers[2].motionComplete()) || (!axis_steppers[3].motionComplete()))
  {
    axis_steppers[2].processMovement();
    axis_steppers[3].processMovement();
  }
  while ((!axis_steppers[0].motionComplete()) || (!axis_steppers[1].motionComplete()))
  {
    axis_steppers[0].processMovement();
    axis_steppers[1].processMovement();
  }
  return ERROR_NO_ERROR;
}


void cmdStatus(int arg_cnt, char **args)
{
  /*
   * Return a no error if we're all set
   */
  if (arg_cnt != 1)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }
  error(ERROR_NO_ERROR);
}


uint16_t getPosition(int axis_index)
{
  /*
   * Get the position in degrees of the current axes
   * 
   * Arg is axis number (0-3)
   */
  return axis_positions[axis_index];
}


void cmdGetPosition(int arg_cnt, char **args)
{
  /*
   * Get the position in degrees of the current axes
   * 
   * Arg is axis number (0-3)
   */
  if (arg_cnt != 2)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  uint8_t axis_index = cmdStr2Num(args[1], 10);

  if ((axis_index < 0) || (axis_index > 3))
  {
    error(ERROR_INVALID_AXIS);
    return;
  }

  Serial.println(axis_positions[axis_index]);
}


void cmdMultiAxisMove(int arg_cnt, char **args)
{
  /*
   * Move all the axes at once - full speed, we don't worry about time coordination.
   * 
   * Args are 4 positions in degrees
   */
  if (arg_cnt != 5)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }

  if (!motors_enabled)
  {
    error(ERROR_NOT_ENABLED);
    return;
  }

  uint16_t target_0 = cmdStr2Num(args[1], 10);
  uint16_t target_1 = cmdStr2Num(args[2], 10);
  uint16_t target_2 = cmdStr2Num(args[3], 10);
  uint16_t target_3 = cmdStr2Num(args[4], 10);

  if ((target_0 < 0) || (target_0 > 359) ||
      (target_1 < 0) || (target_1 > 359) ||
      (target_2 < 0) || (target_2 > 359) ||
      (target_3 < 0) || (target_3 > 359))
      {
        error(ERROR_OUT_OF_RANGE);
        return;
      }

  error(multiAxisMove(target_0, target_1, target_2, target_3));
}


void cmdSetPosition(int arg_cnt, char **args)
{
  /*
   * Set the position of the axis in degrees. (Just internal counter)
   * 
   * Args are axis number and position
   */
  if (arg_cnt != 3)
  {
    error(ERROR_WRONG_NUMBER_OF_ARGUMENTS);
    return;
  }
  
  uint8_t axis_index = cmdStr2Num(args[1], 10);
  uint16_t position = cmdStr2Num(args[2], 10);

  if ((axis_index < 0) || (axis_index > 3))
  {
    error(ERROR_INVALID_AXIS);
    return;
  }

  if ((position < 0) || (position > 359))
  {
    error(ERROR_OUT_OF_RANGE);
    return;
  }

  axis_positions[axis_index] = position;
  error(ERROR_NO_ERROR);
}


void error(error_types error_num)
{
  /*
   * Displays the error number on the serial terminal prefaced by an E.
   */
  Serial.print("E");
  Serial.println(error_num);
}


void setup()
{
  // Startup Serial - used for command
  Serial.begin(115200);
  cmdInit(&Serial);

  // Setup Pin Modes
  pinMode(PIN_POLAR1_STEP, OUTPUT);
  pinMode(PIN_POLAR1_DIR, OUTPUT);
  pinMode(PIN_POLAR1_EN, OUTPUT);
  pinMode(PIN_POLAR2_STEP, OUTPUT);
  pinMode(PIN_POLAR2_DIR, OUTPUT);
  pinMode(PIN_POLAR2_EN, OUTPUT);
  pinMode(PIN_SAMPLE_STEP, OUTPUT);
  pinMode(PIN_SAMPLE_DIR, OUTPUT);
  pinMode(PIN_SAMPLE_EN, OUTPUT);
  pinMode(PIN_STAGE_STEP, OUTPUT);
  pinMode(PIN_STAGE_DIR, OUTPUT);
  pinMode(PIN_STAGE_EN, OUTPUT);

  // Force the motors to be disabled at startup
  digitalWrite(PIN_POLAR1_EN, HIGH);
  digitalWrite(PIN_POLAR2_EN, HIGH);
  digitalWrite(PIN_SAMPLE_EN, HIGH);
  digitalWrite(PIN_STAGE_EN, HIGH);

  // Setup Motors
  axis_steppers[0].connectToPins(PIN_POLAR1_STEP, PIN_POLAR1_DIR);
  axis_steppers[1].connectToPins(PIN_POLAR2_STEP, PIN_POLAR2_DIR);
  axis_steppers[2].connectToPins(PIN_SAMPLE_STEP, PIN_SAMPLE_DIR);
  axis_steppers[3].connectToPins(PIN_STAGE_STEP, PIN_STAGE_DIR);

  for (int i=0; i<4; i++)
  {
    axis_steppers[i].setSpeedInStepsPerSecond(SPEED_STEPS_PER_SECOND);
    axis_steppers[i].setAccelerationInStepsPerSecondPerSecond(ACCELERATION_STEPS_PER_SECOND_PER_SECOND);
  }
 
  cmdAdd("EnableAll", cmdEnableMotors);
  cmdAdd("DisableAll", cmdDisableMotors);
  cmdAdd("MoveAxis", cmdMoveAxis);
  cmdAdd("GoHome", cmdMoveHome);
  cmdAdd("GoLoad", cmdMoveLoad);
  cmdAdd("GetPosition", cmdGetPosition);
  cmdAdd("SetPosition", cmdSetPosition);
  cmdAdd("Status", cmdStatus);
  cmdAdd("MultiAxisMove", cmdMultiAxisMove);
  cmdAdd("JogAxis", cmdJogAxis);
}


void loop()
{
  cmdPoll();
}

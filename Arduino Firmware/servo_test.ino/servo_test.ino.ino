// SPDX-FileCopyrightText: 2026-present Dhiman Sarkar, National Council of Science Museums (NCSM)
// SPDX-License-Identifier: AGPL-3.0-or-later

/*
 * PCA9685 Servo Controller - Arduino Nano
 *
 * HW : Arduino Nano + PCA9685 (I2C 0x40)
 * LIB: Adafruit PWM Servo Driver
 *
 * CH 0-7  : sweep 0<->180 deg, 500ms interval
 * CH 8-11 : fixed 0 deg
 * CH12-15 : fixed 90 deg
 *
 * Servo pulse: min=102 ticks, max=512 ticks @ 50Hz
 *
 * Wiring:
 *   Nano A4 -> SDA
 *   Nano A5 -> SCL
 *   PCA9685 V+ -> 5V servo supply
 */

#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

#define SERVOMIN  102
#define SERVOMAX  512

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver(0x40);

uint16_t degToTick(uint8_t deg) {
  return map(deg, 0, 180, SERVOMIN, SERVOMAX);
}

void setup() {
  pwm.begin();
  pwm.setOscillatorFrequency(25000000);
  pwm.setPWMFreq(50);

  pwm.setPWM(8,  0, degToTick(0));
  pwm.setPWM(9,  0, degToTick(0));
  pwm.setPWM(10, 0, degToTick(0));
  pwm.setPWM(11, 0, degToTick(0));
  pwm.setPWM(12, 0, degToTick(90));
  pwm.setPWM(13, 0, degToTick(90));
  pwm.setPWM(14, 0, degToTick(90));
  pwm.setPWM(15, 0, degToTick(90));
}

void loop() {
  pwm.setPWM(0, 0, degToTick(0));
  pwm.setPWM(1, 0, degToTick(0));
  pwm.setPWM(2, 0, degToTick(0));
  pwm.setPWM(3, 0, degToTick(0));
  pwm.setPWM(4, 0, degToT
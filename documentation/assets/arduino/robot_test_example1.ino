/*
 * File: robot_test_example1.ino
 *
 * SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)
 * SPDX-License-Identifier: AGPL-3.0-or-later
 */

#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

// Arduino Nano I2C Pins:
// SDA -> A4
// SCL -> A5

Adafruit_PWMServoDriver pca9685 = Adafruit_PWMServoDriver();

#define SERVOMIN  102
#define SERVOMAX  512

void setup() {

  pca9685.begin();
  pca9685.setPWMFreq(50);

  delay(500);
}

void loop() {

  // Move servos from 30° to 60°
  for (int angle = 30; angle <= 60; angle++) {

    int pulse = map(angle, 0, 180, SERVOMIN, SERVOMAX);

    // setPWM(channel, ON_time, OFF_time)
    // channel  -> PCA9685 output channel number
    // ON_time  -> PWM start count (usually 0)
    // OFF_time -> PWM end count (controls servo position)

    pca9685.setPWM(0, 0, pulse);
    pca9685.setPWM(1, 0, pulse);
    pca9685.setPWM(2, 0, pulse);
    pca9685.setPWM(3, 0, pulse);

    delay(20);
  }

  delay(1000);

  // Move servos from 60° back to 30°
  for (int angle = 60; angle >= 30; angle--) {

    int pulse = map(angle, 0, 180, SERVOMIN, SERVOMAX);

    pca9685.setPWM(0, 0, pulse);
    pca9685.setPWM(1, 0, pulse);
    pca9685.setPWM(2, 0, pulse);
    pca9685.setPWM(3, 0, pulse);

    delay(20);
  }

  delay(1000);
}
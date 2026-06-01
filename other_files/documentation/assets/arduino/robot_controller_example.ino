/*
 * File: robot_test_example1.ino
 *
 * SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)
 *
 * SPDX-License-Identifier: AGPL-3.0-or-later
 */

#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();

int servoMin = 102;
int servoMax = 512;

void setup() {

  Serial.begin(115200);

  pwm.begin();
  pwm.setPWMFreq(50);

}

void loop() {

  if(Serial.available()) {

    String data = Serial.readStringUntil('\n');

    data.trim();

    // Check comma positions
    int c1 = data.indexOf(',');
    int c2 = data.indexOf(',', c1 + 1);
    int c3 = data.indexOf(',', c2 + 1);

    if(c1 == -1 || c2 == -1 || c3 == -1) {

      Serial.println("ERROR");
      return;

    }

    // Extract values
    String s1 = data.substring(0, c1);
    String s2 = data.substring(c1 + 1, c2);
    String s3 = data.substring(c2 + 1, c3);
    String s4 = data.substring(c3 + 1);

    // Convert to angles
    float ang1 = s1.toFloat();
    float ang2 = s2.toFloat();
    float ang3 = s3.toFloat();
    float ang4 = s4.toFloat();

    // Validate range
    if(
      ang1 < 0 || ang1 > 180 ||
      ang2 < 0 || ang2 > 180 ||
      ang3 < 0 || ang3 > 180 ||
      ang4 < 0 || ang4 > 180
    ) {

      Serial.println("ERROR");
      return;

    }

    // Convert angle to PWM
    int pwm1 = map(ang1, 0, 180, servoMin, servoMax);
    int pwm2 = map(ang2, 0, 180, servoMin, servoMax);
    int pwm3 = map(ang3, 0, 180, servoMin, servoMax);
    int pwm4 = map(ang4, 0, 180, servoMin, servoMax);

    // Update servos
    // setPWM(channel, start, end)
    pwm.setPWM(0, 0, pwm1);
    pwm.setPWM(1, 0, pwm2);
    pwm.setPWM(2, 0, pwm3);
    pwm.setPWM(3, 0, pwm4);

    Serial.println("OK");

  }

}
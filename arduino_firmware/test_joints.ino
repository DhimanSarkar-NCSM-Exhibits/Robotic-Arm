#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver servo_driver = Adafruit_PWMServoDriver(0x40);

void setup() {
  servo_driver.begin();
  servo_driver.setOscillatorFrequency(25000000);
  servo_driver.setPWMFreq(50);
}

void loop() {
  for (int deg = 30; deg <= 60; deg++) {
    servo_driver.setPWM(0, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(1, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(2, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(3, 0, map(deg, 0, 180, 102, 512));
  }

  for (int deg = 60; deg >= 30; deg--) {
    servo_driver.setPWM(0, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(1, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(2, 0, map(deg, 0, 180, 102, 512));
    servo_driver.setPWM(3, 0, map(deg, 0, 180, 102, 512));
    delay(20);
  }
}
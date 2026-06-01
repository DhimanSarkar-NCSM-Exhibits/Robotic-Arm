#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pca9685 = Adafruit_PWMServoDriver(0x40);

void setup() {
  Wire.begin();
  
  pca9685.begin();
  pca9685.setOscillatorFrequency(25000000);
  pca9685.setPWMFreq(50);
}

void loop() {
  for (int deg = 30; deg <= 60; deg++) {
    pca9685.setPWM(0, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(1, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(2, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(3, 0, map(deg, 0, 180, 102, 512));
  }

  for (int deg = 60; deg >= 30; deg--) {
    pca9685.setPWM(0, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(1, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(2, 0, map(deg, 0, 180, 102, 512));
    pca9685.setPWM(3, 0, map(deg, 0, 180, 102, 512));
    delay(20);
  }
}
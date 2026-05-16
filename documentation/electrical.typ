// file: electrical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)



The electronic and control systems of a robot are responsible for sensing, processing information, and controlling movement. These systems allow the robot to interact with its environment and perform tasks accurately.

In this section, we will explore the major electrical and programming components used in the robotic arm system.


== Robotic Actuators and Sensors

Think about your own body for a moment.

Your eyes help you see, your ears help you hear, and your muscles help you move. Robots work in a very similar way.

To interact with the world, every robot needs two important things:
- A way to *sense* the environment
- A way to *move* and perform actions

This is where *sensors* and *actuators* come in.

Sensors act like the robot’s senses. They help the robot collect information about the world around it.

Different sensors can detect:
- Distance and obstacles
- Position and movement
- Force and pressure
- Light, sound, and temperature

Actuators are the parts that create movement. They act like the robot’s muscles by converting electrical energy into motion.

Common robotic actuators include:
- Servo motors
- DC motors
- Stepper motors
- Pneumatic and hydraulic systems

Many beginner robotic systems use small servo motors because they can rotate to specific angles with good precision and easy control.

In this workshop, the robotic arm uses only *mini servo motors* for movement and does not use external sensors for automatic feedback or correction.

This means the robotic arm mainly works as an *open-loop robotic system*, where the robot follows predefined commands directly.

More advanced robots use sensors to continuously monitor their movement and automatically correct errors. These are called *closed-loop systems*.

Whether simple or advanced, almost every robot works using the same basic idea:
*sense → process → act*



== Servo Motors

Servo motors are one of the most commonly used actuators in robotics. They are specially designed to provide *precise angular movement*, which makes them ideal for robotic arms, steering systems, walking robots, and automation projects.

Unlike ordinary DC motors that spin continuously, a servo motor can rotate to a specific angle and hold its position accurately.

For example:
- Move to 30°
- Stop and hold position
- Move to 90°
- Return to 0°

This precise positioning ability is what makes servo motors extremely useful in robotics.


=== Internal Components of a Servo Motor

A typical servo motor contains several mechanical and electronic parts packed inside a small enclosure.

Main internal components include:
- A small DC motor
- Gear reduction system
- Position sensor (usually a potentiometer)
- Electronic control circuit
- Output shaft


The DC motor spins at high speed, but the internal gear system reduces the speed and increases the torque. This allows the servo to move with better strength and control.

The position sensor continuously measures the angle of the output shaft and sends feedback to the internal control circuit.

#figure(
  image("assets/26_servo_initernal.jpg"),
  caption: "Internal components of a typical servo motor",
)


=== How a Servo Motor Works

A servo motor works using a small internal *closed-loop control system*.

When a control signal tells the servo to move to a certain angle:
- The control circuit compares the desired angle with the current position
- The motor rotates in the required direction
- The gears transfer the motion to the output shaft
- The position sensor continuously checks the shaft angle
- The motor stops automatically when the desired angle is reached

This process happens very quickly and continuously inside the servo motor.

Even if an external robotic system is open-loop, the servo motor itself internally uses feedback control for accurate positioning.


=== Rotational Limits

Most standard hobby servo motors have limited rotation ranges, usually:
- 0° to 180°
- or about 90° in each direction

This limited movement helps the servo maintain accurate positional control.

Some special servos called *continuous rotation servos* can rotate endlessly like regular motors, but they sacrifice precise angle control.


=== Analog and Digital Servo Motors

Servo motors are generally divided into two main types.

*Analog Servo Motors*
- Simpler and lower cost
- Slower response
- Lower holding accuracy
- Common in beginner robotics projects

*Digital Servo Motors*
- Faster and more precise
- Better holding torque
- Improved response time
- Used in advanced robotics and RC systems

Digital servos use a faster internal control system, allowing them to react more quickly and maintain position more accurately.


=== PWM Control of Servo Motors

Servo motors are commonly controlled using a signal called *PWM* (*Pulse Width Modulation*).

PWM is a technique where a digital signal rapidly switches between ON and OFF states. By changing the duration of the ON time, electronic systems can control power, speed, brightness, or position.

A PWM signal is mainly described using:
- *Frequency* → how many pulses are generated per second
- *Pulse Width* → how long each pulse stays ON
- *Duty Cycle* → percentage of ON time in one complete cycle

#figure(
  image("assets/27_pwm_spec.jpg"),
  caption: [Basic representation of a PWM signal.]
)

In servo motors, the *pulse width* determines the target angle of rotation.

Most hobby servo motors use:
- Frequency ≈ 50 Hz
- One pulse every 20 ms

Typical pulse widths are:
- ~1 ms pulse → near 0°
- ~1.5 ms pulse → near 90°
- ~2 ms pulse → near 180°

These pulses are continuously repeated so the servo can maintain its position accurately.

#figure(
  image("assets/25_servo_pwm.jpg"),
  caption: [PWM signal controlling servo motor angle.]
)

Microcontrollers such as Arduino generate PWM signals to control servo motors precisely.


=== Servo Motors in Robotics

Servo motors are widely used because they are:
- Compact
- Easy to control
- Affordable
- Precise
- Suitable for beginners

In robotic arms, servo motors control the movement of different joints and help achieve smooth and controlled motion.

Because of their simplicity and precision, servo motors are one of the best starting points for learning robotics and automation.




== Motor Drivers

Imagine trying to lift a heavy object using only your fingers. It would be very difficult because your fingers alone cannot provide enough power.

A similar problem happens in robotics.

Microcontrollers such as Arduino are excellent at making decisions and sending signals, but they cannot directly provide enough electrical power to drive motors safely.

This is why robots use *motor drivers*.

A motor driver acts like a powerful helper between the controller and the motor:
- The microcontroller gives instructions
- The motor driver supplies the required power
- The motor performs the movement

Without a proper motor driver:
- Motors may not move correctly
- The controller may get damaged
- Robot movement may become unstable


=== Why Motor Drivers are Important

Different motors require different amounts of:
- Voltage
- Current
- Speed control
- Direction control

Motor drivers help robots manage all these requirements safely and efficiently.

They also allow robots to:
- Control motor speed
- Change rotation direction
- Drive multiple motors together
- Protect sensitive electronics from high current

You can think of a motor driver as the *power management system* of a robot.


=== Types of Motor Drivers

Different robots use different types of motor drivers depending on the motors being controlled.

Some common types are:

- *DC Motor Drivers*  
  Used for controlling regular DC motors and their rotation direction.

- *Stepper Motor Drivers*  
  Used for precise step-by-step movement.

- *Servo Motor Drivers*  
  Used for controlling multiple servo motors using PWM signals.

- *High-Power Motor Controllers*  
  Used in industrial robots, electric vehicles, and heavy machinery.

// #figure(
//   image("assets/motor_driver_types.jpg"),
//   caption: [Different types of motor drivers used in robotics.]
// )


=== Why Use a Separate Servo Driver?

Servo motors already contain small internal control circuits. So you might wonder:

*"Why do robots still need a separate servo driver?"*

A microcontroller can directly control a few servos, but as more servos are added, several problems can appear:
- Limited PWM pins
- Increased processing load
- Unstable timing signals
- Power distribution problems

A dedicated servo driver solves these issues by generating stable PWM signals independently.

This allows:
- Smoother movement
- Better timing accuracy
- Control of many servos at once
- Reduced workload on the microcontroller

This is especially useful in robotic arms where many joints need to move together smoothly.


=== PCA9685 Servo Driver Module

One of the most popular servo driver modules used in robotics is the *PCA9685 PWM Driver Module*.

This module is specially designed for controlling multiple servo motors easily and efficiently.

#figure(
  image("assets/28_PCA9685.jpg"),
  caption: [PCA9685 servo motor driver module.]
)

The PCA9685 can:
- Control up to 16 servo motors
- Generate stable PWM signals
- Communicate using the I2C protocol
- Reduce the processing load on the controller

Instead of generating PWM signals manually for every servo, the controller simply sends commands to the PCA9685, and the driver handles the signal generation automatically.

This makes robotic systems more stable and easier to control.


=== How the PCA9685 Works

Inside the PCA9685 is a dedicated PWM controller chip.

The microcontroller communicates with the module using I2C communication and sends:
- Servo channel number
- PWM timing information
- Desired servo position

The PCA9685 then independently generates accurate PWM signals for each servo motor.

This allows many motors to operate smoothly at the same time.

You can think of the PCA9685 as a *signal manager* that helps organize and control many motors together.


=== PCA9685 Pin Description

The PCA9685 module contains several important pins.

*Power Pins*
- *VCC* → Logic power supply (usually 3.3V or 5V)
- *GND* → Ground connection
- *V+* → External power supply for servo motors

*I2C Communication Pins*
- *SDA* → Serial Data line
- *SCL* → Serial Clock line

*PWM Output Pins*
- Channels *0–15* → PWM outputs for servos or LEDs

// #figure(
//   image("assets/31_pca9685_pins.jpg"),
//   caption: [Important pins of the PCA9685 module.]
// )


== Microcontrollers and Control Systems

Think about how the human body works.

Your brain receives information from your eyes, ears, and skin, processes that information, makes decisions, and then sends signals to your muscles to perform actions.

Robots work in a very similar way.

Every robot needs a *control system* that can:
- Receive information
- Process instructions
- Make decisions
- Control movement

This control system acts as the *brain* of the robot.


=== What is a Microcontroller?

A *microcontroller* is a small programmable computer designed to control electronic systems.

Unlike a full desktop computer, a microcontroller is built specifically for controlling hardware such as:
- Motors
- Sensors
- LEDs
- Displays
- Communication modules

Microcontrollers are widely used in:
- Robots
- Smart appliances
- Drones
- Cars
- Medical devices
- Industrial automation systems

Even simple everyday devices like washing machines and microwave ovens contain microcontrollers.


=== What Does a Microcontroller Do in a Robot?

In robotics, the microcontroller continuously manages the operation of the robot.

It can:
- Read sensor data
- Control motors
- Process programmed instructions
- Communicate with other electronic modules
- Coordinate different robotic movements

A robot without a controller would simply be a collection of disconnected mechanical and electronic parts.


=== Inputs, Processing, and Outputs

Most robotic control systems follow a simple cycle:

*sense → process → act*

- Sensors collect information
- The controller processes the data
- Actuators perform movement or action

For example:
- A distance sensor detects an obstacle
- The controller decides what to do
- The motors change direction

This continuous cycle allows robots to interact intelligently with the world.


// #figure(
//   image("assets/robot_control_flow.jpg"),
//   caption: [Basic control flow in a robotic system.]
// )


=== Popular Microcontrollers in Robotics

Many different microcontrollers are used in robotics depending on the complexity of the system.

Some popular examples include:
- Arduino
- ESP32
- Raspberry Pi Pico
- STM32
- PIC Microcontrollers

Some robots even use powerful embedded computers such as Raspberry Pi or NVIDIA Jetson for artificial intelligence and computer vision applications.


=== Introduction to Arduino

One of the most beginner-friendly and widely used robotics platforms is *Arduino*.

Arduino became popular because it made electronics and programming much easier for students, hobbyists, and engineers.

The Arduino platform provides:
- Easy programming
- Simple hardware connections
- Large community support
- Huge numbers of learning resources and libraries

Because of its simplicity and flexibility, Arduino is commonly used in:
- Robotics
- Automation
- Smart home systems
- IoT projects
- Educational electronics


=== Arduino Nano

In compact robotic systems, one very popular board is the *Arduino Nano*.

The Arduino Nano is a small microcontroller development board based on the *ATmega328P microcontroller*.

#figure(
  image("assets/29_arduino_nano.jpg"),
  caption: [Arduino Nano microcontroller board.]
)

Despite its small size, the Arduino Nano can:
- Read sensor inputs
- Control motors
- Communicate with driver modules
- Generate PWM signals
- Run robotic programs

The Arduino Nano is especially useful for robotics because it is:
- Small and lightweight
- Easy to program
- Breadboard friendly
- Affordable
- Power efficient


=== Important Features of Arduino Nano

Some important features of the Arduino Nano include:

- *Microcontroller:* ATmega328P
- *Operating Voltage:* 5V
- *Clock Speed:* 16 MHz
- *Digital I/O Pins:* 14
- *Analog Input Pins:* 8
- *PWM Pins:* 6
- *Communication Support:* UART, I2C, SPI

These features allow the Nano to control motors, communicate with sensors, and manage robotic systems effectively.


=== Why Arduino is Great for Learning Robotics

One of the best things about Arduino is that it allows you to quickly turn ideas into working projects.

With just a few lines of code, you can:
- Move motors
- Blink LEDs
- Read sensors
- Build robots
- Create automation systems

Many students begin their robotics journey using Arduino because it provides a perfect balance between simplicity and real-world engineering concepts.

In fact, many advanced robotics ideas start from the same basic principles you learn while working with small microcontrollers like Arduino.





== Arduino Framework and Programming

A robot is not useful unless it knows *what to do*.

That is where programming becomes important.

Programming gives instructions to the robot and tells it:
- How to move
- When to move
- How fast to move
- What actions to perform

In robotics, these instructions are written as *programs* or *code*.

For Arduino-based systems, we use the *Arduino Framework* to write and upload programs easily.


=== What is the Arduino Framework?

The Arduino Framework is a simple and beginner-friendly programming platform designed for electronics and robotics.

It provides:
- Easy programming functions
- Built-in hardware control tools
- Simple communication methods
- Large collections of reusable libraries

Instead of writing very complex low-level programs, Arduino allows you to quickly build real electronic and robotic systems using simple code.

This is one of the main reasons why Arduino became extremely popular among:
- Students
- Makers
- Hobbyists
- Engineers
- Robotics learners


=== Arduino IDE

Arduino programs are usually written using software called the *Arduino IDE* (*Integrated Development Environment*).

The Arduino IDE is used to:
- Write code
- Check for errors
- Compile programs
- Upload code to the Arduino board
- Monitor debugging messages

// #figure(
//   image("assets/arduino_ide.jpg"),
//   caption: [Arduino IDE used for programming Arduino boards.]
// )

An Arduino program is called a *sketch* and is usually saved with the `.ino` file extension.


=== Basic Structure of an Arduino Program

Almost every Arduino program contains two important sections:

- `setup()`  
  Runs only once when the system starts.

- `loop()`  
  Runs continuously again and again.

This structure makes Arduino programming simple and easy to understand.

```cpp
void setup() {
  // Runs once
}

void loop() {
  // Runs repeatedly
}
```

You can think of:
- `setup()` as the robot getting ready
- `loop()` as the robot continuously doing its work


=== Example: Blinking an LED

One of the first programs most students learn is blinking an LED.

```cpp
void setup() {
  pinMode(13, OUTPUT);
}

void loop() {
  digitalWrite(13, HIGH);
  delay(1000);

  digitalWrite(13, LOW);
  delay(1000);
}
```

In this program:
- `pinMode()` configures a pin as output
- `digitalWrite()` turns the LED ON or OFF
- `delay()` pauses the program for a certain amount of time

Even though this looks simple, the same idea is later used for controlling motors, sensors, and robotic systems.


=== Variables and Decision Making

Robots often need to make decisions.

Programming allows robots to compare values and perform actions depending on conditions.

```cpp
int angle = 90;

void setup() {
}

void loop() {

  if(angle > 45) {
    // Perform action
  }

}
```

Using variables and conditions allows robots to behave differently in different situations.


=== External Libraries

One of the most powerful features of Arduino is support for *external libraries*.

Libraries are prewritten code packages that help control electronic devices easily.

Libraries are commonly used for:
- Servo motors
- Displays
- Sensors
- Motor drivers
- Communication modules

Instead of writing everything from the beginning, you can simply include the required library.

```cpp
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
```

Here:
- `Wire.h` is used for I2C communication
- `Adafruit_PWMServoDriver.h` is used for controlling the PCA9685 servo driver module

Libraries save time and make programming much easier.


=== Example: Controlling a Servo Motor

The following example initializes the PCA9685 servo driver and moves a servo motor between two positions.

```cpp
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pwm =
Adafruit_PWMServoDriver();

void setup() {

  pwm.begin();

  pwm.setPWMFreq(50);

}

void loop() {

  pwm.setPWM(0, 0, 150);

  delay(1000);

  pwm.setPWM(0, 0, 350);

  delay(1000);

}
```

In this program:
- The PCA9685 driver is initialized
- PWM frequency is set to 50 Hz
- Servo motor positions are changed using PWM values

This is how programming creates real robotic movement.


=== Uploading Programs to Arduino

After writing the program:
- The code is compiled
- Errors are checked
- The sketch is uploaded using a USB cable

Once uploaded, the Arduino automatically starts running the program.


=== Why Arduino Programming is Popular

Arduino programming is widely used because it is:
- Easy to learn
- Beginner friendly
- Fast for prototyping
- Flexible and expandable
- Supported by a huge global community

With only a few lines of code, you can control:
- LEDs
- Motors
- Sensors
- Displays
- Complete robotic systems

Many advanced robotics and automation systems begin with the same basic programming ideas you are learning here.





  


== Circuit Design and Development

Now that the mechanical structure is assembled, it is time to bring the robotic arm to life using electronics and programming.

In this stage, we will connect:
- Arduino Nano
- PCA9685 servo driver
- Servo motors
- External power supply

Together, these components form the complete control system of the robotic arm.


=== Basic Control Architecture

The robotic arm uses:
- *Arduino Nano* as the main controller
- *PCA9685* as the servo driver
- *Mini servo motors* as actuators

The Arduino sends control instructions to the PCA9685 driver using I2C communication. The PCA9685 then generates PWM signals to control the servo motors.

The four servo motors are connected sequentially:
- Base Joint → Channel 0
- Link 1 Joint → Channel 1
- Link 2 Joint → Channel 2
- End Effector Joint → Channel 3

This organized channel arrangement makes programming and debugging easier.


// #figure(
//   image("assets/robot_circuit_overview.jpg"),
//   caption: [Basic control architecture of the robotic arm.]
// )


=== Connecting Servo Motors to PCA9685

Each servo motor contains a 3-wire cable connected using a 3-pin header.

Typical servo wire color coding is:

- *Brown or Black* → Ground (GND)
- *Red* → +5V Power
- *Orange or Yellow* → PWM Signal

The PCA9685 module also contains 3-pin output headers for every channel.

Typical PCA9685 pin arrangement:
- GND
- V+
- Signal

While connecting the servos:
- Match GND wire to GND
- Match Power wire to V+
- Match Signal wire to Signal pin

Incorrect wiring may damage the servo motor or prevent proper operation.


// #figure(
//   image("assets/pca_servo_connection.jpg"),
//   caption: [Servo motor connection to PCA9685 module.]
// )


=== Connecting PCA9685 to Arduino Nano

The PCA9685 communicates with Arduino using the *I2C protocol*.

The following connections are required:

- *SDA* → Arduino A4
- *SCL* → Arduino A5
- *VCC* → Arduino 5V
- *GND* → Arduino GND

These wires handle communication and logic-level power between the two devices.


// #figure(
//   image("assets/pca_arduino_connection.jpg"),
//   caption: [I2C connection between Arduino Nano and PCA9685.]
// )


=== External Power Supply

Servo motors require significantly more current than the Arduino can safely provide.

Therefore, the servo motors are powered using an external:
- *5V*
- *3A DC power supply*

The power supply is connected to:
- *V+* terminal of PCA9685
- *GND* terminal of PCA9685

Important:
- Do *not* power multiple servos directly from the Arduino 5V pin
- Always ensure correct polarity while connecting the supply


=== Initial Power-Up Procedure

During the initial setup:
- Keep the external 5V supply switched *OFF*
- Connect the Arduino Nano to the computer using a USB cable

At this stage:
- The Arduino receives power from the computer
- The PCA9685 logic section also becomes active through Arduino VCC

If the connections are correct:
- The *red power LED* on the PCA9685 module should turn ON

This confirms that:
- Arduino is powered
- PCA9685 logic circuit is working
- I2C communication wiring is likely correct


=== Uploading a Servo Test Program

Before operating the complete robotic arm, it is important to test whether all servo motors are functioning properly.

The following Arduino program moves all four servos between two positions.

```cpp
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pwm =
Adafruit_PWMServoDriver();

void setup() {

  pwm.begin();

  pwm.setPWMFreq(50);

}

// Arduino Nano I2C Pins:
// A4 -> SDA
// A5 -> SCL

void loop() {

  // setPWM(channel, start, end)

  pwm.setPWM(0, 0, 150);
  pwm.setPWM(1, 0, 150);
  pwm.setPWM(2, 0, 150);
  pwm.setPWM(3, 0, 150);

  delay(1000);

  pwm.setPWM(0, 0, 350);
  pwm.setPWM(1, 0, 350);
  pwm.setPWM(2, 0, 350);
  pwm.setPWM(3, 0, 350);

  delay(1000);

}
```


=== Final Testing

After uploading the program:
- Turn ON the external 5V power supply
- Observe the servo motors carefully

If all connections are correct:
- All four servo motors should move smoothly
- The robotic arm joints should rotate between two positions

If any servo does not move properly:
- Immediately turn OFF the power
- Recheck wiring connections
- Verify servo orientation and channel assignment

Once the test is successful, the robotic arm is ready for further programming and movement control experiments.














== Programming Robot Controller

Now that the robotic arm is mechanically assembled and electrically connected, the next step is to control it using software.

In robotics, the controller program acts like the robot’s instruction manual. It tells the motors:
- Which joint should move
- How much it should move
- When it should move

In this robotic arm, the Arduino Nano reads commands from the computer and sends motion signals to the servo motors through the PCA9685 servo driver.


=== Initial Servo Movement Test

The first step in robot programming is always testing whether all motors are functioning correctly.

A simple test program can:
- Move each servo motor
- Verify electrical connections
- Check joint directions
- Detect assembly problems early

The following program moves all four servo motors between approximately 30#sym.degree and 60#sym.degree repeatedly.

#raw(
  read("assets/arduino/robot_test_example1.ino"),
  lang: "cpp",
  block: true,
)

When this program runs:
- The Arduino sends PWM commands to PCA9685
- PCA9685 generates servo control pulses
- Servo motors rotate to the commanded positions

This confirms that:
- The Arduino is functioning
- I2C communication is working
- PCA9685 is generating PWM signals correctly
- All servo motors are operational


=== Understanding Robot Joint Control

Each servo motor controls one robotic joint.

The motors are connected as:

- Channel 0 → Base Joint
- Channel 1 → First Link
- Channel 2 → Second Link
- Channel 3 → End Effector

Each PWM value corresponds to a certain servo angle.

For example:
- Smaller PWM value → smaller angle
- Larger PWM value → larger angle

Servo motors usually rotate within:
- 0#sym.degree to 180#sym.degree

However, practical movement limits are often smaller to avoid damaging the mechanical structure.


=== From Fixed Motion to Real Robot Control

The previous program performs only predefined movements.

But real robots become much more powerful when they can receive commands dynamically from a computer.

Instead of hardcoded motion:
- The computer sends desired joint angles
- Arduino receives the data
- The robotic arm moves accordingly

This allows:
- Real-time control
- Interactive robotics
- GUI-based control systems
- Wireless operation
- Advanced automation


=== Serial Communication

The Arduino Nano communicates with the computer using *Serial Communication* through the USB cable.

Serial communication transfers data as text.

In this robotic arm system, the computer sends four joint angles using the following format:

`ang1,ang2,ang3,ang4`

Example:

`45.0,90.0,120.0,60.0`

Important rules:
- Values must be separated only using commas
- No spaces are allowed
- All values are floating-point numbers

Each value represents:
- Joint 1 angle
- Joint 2 angle
- Joint 3 angle
- Joint 4 angle


=== Handling Invalid Data

Robotic systems must always handle communication safely.

If:
- Incorrect data arrives
- Missing values are received
- Wrong formatting is detected

The Arduino should:
- Ignore the invalid command
- Avoid unexpected robot movement
- Send an error message back through Serial communication

Example error response:

`ERROR`

This prevents accidental or dangerous robot motion caused by corrupted communication.


=== Final Robot Controller Program

The following Arduino program receives four joint angles from the computer through Serial communication and controls the robotic arm accordingly.

Expected Serial format:

`ang1,ang2,ang3,ang4`

Example:

`45.0,90.0,120.0,60.0`

If invalid or incomplete data is received, the Arduino ignores the command and sends:

`ERROR`

The program then converts the received joint angles into PWM values and updates all four servo motors.

#raw(
  read("assets/arduino/robot_controller_example.ino"),
  lang: "cpp",
  block: true,
)

=== How the Program Works

The program continuously waits for incoming Serial data from the computer.

When a valid command arrives:
- The four angle values are extracted
- Each angle is converted into a PWM signal
- PWM signals are sent to PCA9685
- The robotic arm moves to the requested positions

If incorrect data is received:
- The command is ignored
- An `ERROR` message is sent back

This creates a safer and more reliable robot control system.


=== Communication Summary

- Communication Type → Serial over USB
- Baud Rate → `115200`
- Servo Driver → PCA9685
- Control Method → Open-loop servo position control

This same control architecture is commonly used in:
- Desktop robotic arms
- CNC systems
- Educational robots
- Automation systems
- Research robotics platforms

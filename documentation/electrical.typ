// file: electrical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": workshop-note

A robot with a perfect mechanical structure but no electronics would be nothing more than a very elaborate sculpture. It is the electrical and control systems that give a robot its ability to sense, decide, and act — to be truly alive as a machine.

The electrical and control layer of a robot is responsible for three things: gathering information about the world through sensors, processing that information and making decisions through a controller, and carrying out those decisions through actuators. These three functions map directly onto the sense–process–act cycle you learned about in the previous chapter. In this chapter, you will explore each of those functions in depth — the hardware that implements them, how they work, and why they are designed the way they are.


== Sensors: The Robot's Senses

Your eyes let you see, your ears let you hear, your skin lets you feel temperature and pressure, and your inner ear gives you your sense of balance. A robot needs equivalent capabilities — a set of devices that let it perceive and measure its environment. These devices are called *sensors*.

A sensor converts a physical quantity in the real world — distance, light intensity, temperature, force — into an electrical signal that the robot's controller can read and interpret. Without sensors, a robot is blind to the world around it. It can only follow pre-programmed instructions blindly, with no ability to respond to unexpected changes in its environment.

#figure(
  image("assets/10_robot_sensor.jpg"),
  caption: [Various types of sensors used in robotics.]
)

The range of sensors used in modern robotics is remarkable. *Distance sensors* (such as ultrasonic and infrared sensors) measure how far away an object is. *Camera systems* capture images or video that computer vision algorithms can analyse to identify objects, read text, or navigate environments. *Force and torque sensors* tell a robot how hard it is pushing or pulling. *Encoders* measure the precise rotational position and speed of a motor shaft. *Temperature sensors* monitor heat levels to prevent overheating. *Inertial measurement units (IMUs)* measure acceleration and angular velocity to track a robot's orientation and motion in space.

The information from all these sensors flows back to the robot's controller, where it is combined with the programmed instructions to determine what action to take next. A robot that uses sensor feedback to continuously adjust its behaviour is far more capable and reliable than one that simply executes fixed commands.


== Actuators: The Robot's Muscles

While sensors provide input, *actuators* provide output — they are the components that convert electrical energy into physical movement. Without actuators, a robot can sense and think all it likes, but it cannot do anything. Actuators are the muscles that make a robot act on the world.

#figure(
  image("assets/09_robot_actuators.jpg"),
  caption: [Various types of actuators used in robotics.]
)

The most common actuators in robotics are electric motors, which come in several important varieties. *DC motors* spin continuously when powered, and their speed and direction can be controlled electrically. They are widely used in wheeled robots and conveyor systems. *Stepper motors* divide a full rotation into a large number of precise equal steps, making them ideal for applications requiring accurate position control without a separate position sensor — they are common in 3D printers and CNC machines. *Servo motors* add a position sensor and a feedback control circuit to a DC motor, allowing them to rotate to and hold a precise angle — they are the actuator of choice for robotic arms.

Beyond electric motors, *pneumatic actuators* use compressed air to drive linear pistons and are valued for their speed and force in industrial automation. *Hydraulic actuators* use pressurised fluid and can produce enormous forces, making them the actuator of choice in heavy industrial robots, construction equipment, and high-power applications.

For most educational and hobby robotic arm projects, servo motors are the go-to actuator because they combine precision, simplicity, and affordability in a compact package.

== Servo Motors: Precision in Every Degree

Servo motors deserve a deeper look, because they are arguably the most important actuator in the world of educational and hobby robotics.

What makes a servo motor special compared to an ordinary DC motor? A regular motor just spins — fast, continuously, and without any built-in sense of where it is. A servo motor, by contrast, can rotate to a *specific angle* and then hold that position with force, even if something tries to push it away. This precise, position-controlled behaviour is exactly what a robotic arm joint needs.

Think about what you need a robotic arm to do: move joint 2 to exactly 90 degrees, hold it there while the end-effector grips an object, then move to 45 degrees. A DC motor alone cannot do this reliably. A servo motor can — it is engineered specifically for this kind of precise, commanded motion.

=== Inside a Servo Motor

Despite their small size, servo motors contain several cleverly integrated components working together.

Inside the housing you will find a small DC motor — the actual source of rotational power. A *gear reduction train* (a compact system of interlocking gears) slows down the motor's high-speed rotation and multiplies its torque, producing an output shaft that turns slowly but with considerable strength. A *position sensor* (typically a small rotary potentiometer) continuously measures the current angle of the output shaft. And an *electronic control circuit* ties everything together, reading the position sensor and controlling the motor to achieve and maintain the commanded angle.

#figure(
  image("assets/26_servo_initernal.jpg", width: 100%),
  caption: [Internal components of a typical servo motor.]
)

=== How a Servo Motor Works

A servo motor operates using an internal *closed-loop control system*. When it receives a command to move to a certain angle, the internal control circuit compares the commanded angle with the current angle (as reported by the position sensor). If they differ, the circuit drives the motor in the direction that will reduce the error. As the output shaft approaches the target angle, the motor slows and eventually stops exactly where commanded. If an external force then tries to disturb the shaft from that angle, the servo immediately detects the error and applies corrective force to resist it — this is called *holding torque*.

This entire process happens extremely fast, creating the impression of instantaneous, locked positioning. Even when a robotic arm using servo motors is operating as an open-loop system at the top level (meaning the arm controller does not read feedback from external sensors), each individual servo motor is internally running its own closed-loop position control.

=== Rotational Limits

Standard hobby servo motors do not rotate freely through 360 degrees like a DC motor. They have a limited rotation range — typically *0° to 180°*, though some models offer a slightly narrower or wider range. This mechanical limit is intentional: it keeps the position sensor's readings unambiguous and allows the internal control circuit to know exactly where the shaft is at all times. Some special servos called *continuous rotation servos* sacrifice angle control to allow unlimited rotation, but these are not position-controlled and behave more like ordinary motors.

=== Analog and Digital Servo Motors

Servo motors come in two main electrical varieties. *Analog servo motors* use a simpler internal circuit that updates the motor control at a lower rate. They are less expensive and perfectly adequate for many applications. *Digital servo motors* use a faster, microprocessor-based internal controller that updates far more rapidly — delivering quicker response, better holding torque, and more precise positioning. Digital servos are preferred in demanding applications such as competitive robotics and advanced automation.

=== Servo Motor Pin-Out

A standard servo motor connects through a 3-wire cable with a 3-pin connector. The brown or black wire is GND (Ground), the red wire is V+ (Power Supply, typically 4.8-6 V), and the orange, yellow, or white wire is the PWM signal line that controls the servo position.

Always connect the wires correctly. Incorrect wiring or voltage can permanently damage the servo's internal control circuit. Although the colour convention is widely used, some manufacturers may use different wire colours, so checking the servo datasheet is recommended.

#figure(
  image("assets/30_sevo_pin.jpg"),
  caption: [Servo motor connector description.]
)

=== Controlling a Servo with PWM

Servo motors are controlled using an electrical signal technique called *Pulse Width Modulation*, or *PWM*.

PWM works by rapidly switching a digital signal between a HIGH (on) state and a LOW (off) state. Rather than varying the voltage level to communicate information, PWM varies the *width* — the duration — of each ON pulse. A microcontroller can generate this pattern easily and precisely, making PWM an ideal way to communicate a desired angle to a servo.

#figure(
  image("assets/27_pwm_spec.jpg"),
  caption: [Basic representation of a PWM signal and its parameters.]
)

A PWM signal is characterised by its *frequency* (how many pulses occur per second), its *pulse width* (how long each pulse stays ON), and its *duty cycle* (the percentage of each period that the signal is ON).

For standard hobby servo motors, the control signal runs at approximately *50 Hz* — meaning one pulse arrives every 20 milliseconds. The position the servo moves to is determined by the width of that pulse: a pulse of approximately *1 millisecond* commands the servo to move to near 0°; a pulse of *1.5 milliseconds* moves it to roughly 90° (the centre); and a pulse of *2 milliseconds* moves it to near 180°. The servo reads each incoming pulse, calculates the commanded angle, and drives its internal motor accordingly.

#figure(
  image("assets/25_servo_pwm.jpg"),
  caption: [PWM pulse width controlling servo motor angle.]
)

Microcontrollers such as Arduino can generate PWM signals on dedicated output pins, which is exactly how robotic arm controllers command their servo joints.


== Motor Drivers: Managing Power

Here is an important reality about microcontrollers: they are excellent at making decisions and generating control signals, but they are not designed to supply large amounts of electrical current. The output pins of a typical microcontroller can provide only a few milliamps — far too little to directly drive a motor, which may require hundreds of milliamps or more.

This is where *motor drivers* come in. A motor driver sits between the microcontroller and the motor, acting as a powered intermediary. The microcontroller sends a small, low-power control signal to the driver; the driver uses that signal to switch a separate, high-current power supply to the motor in the right way. The microcontroller gives the instruction; the driver supplies the muscle.

Without a proper motor driver, you risk destroying your microcontroller by overloading its output pins. Worse, motors connected directly to a microcontroller may draw so much current during startup or stall that they reset or damage the controller entirely. Motor drivers protect against all of this.

=== Types of Motor Drivers

Different robots use different motor drivers depending on the type of motors being controlled. *DC motor drivers* (often based on an H-bridge circuit) allow a microcontroller to control the speed and direction of one or more DC motors. *Stepper motor drivers* generate the precise, timed sequences of pulses that stepper motors require. *Servo motor drivers* generate stable PWM signals for multiple servo motors simultaneously. *High-power motor controllers* handle the large currents needed in industrial robots, electric vehicles, and heavy machinery.

=== Why Use a Dedicated Servo Driver?

Servo motors contain their own internal control circuits, so you might wonder: does a robotic arm really need a separate servo driver module? Can the microcontroller not just generate PWM signals directly?

The answer is: it depends on how many servos you need. A microcontroller can directly generate PWM on a limited number of output pins — typically six to ten on a common Arduino board. For a simple one or two-servo project, direct control works fine. But a robotic arm with four, six, or more joints needs PWM on just as many channels. As the number of servos grows, the microcontroller starts to struggle: it runs out of PWM pins, the processing overhead of generating all those signals occupies valuable computation time, and the timing becomes less accurate because the controller is juggling too many tasks at once.

A dedicated servo driver module solves all of these problems at once. It takes over the task of generating PWM signals entirely, operating independently and freeing the microcontroller to focus on higher-level logic. The microcontroller simply tells the driver "set channel 3 to this angle" via a simple communication interface, and the driver takes care of the rest.

=== The PCA9685 Servo Driver Module

One of the most widely used and well-supported servo driver modules in robotics and electronics is the *PCA9685 PWM Driver Module*.

#figure(
  image("assets/28_PCA9685.jpg"),
  caption: [PCA9685 16-channel servo motor driver module.]
)

The PCA9685 is a dedicated PWM controller chip mounted on a convenient breakout board. It can independently generate PWM signals on up to *16 channels simultaneously*, each fully configurable in frequency and pulse width. It communicates with a microcontroller using *I2C* — a widely used two-wire serial communication protocol that requires only two signal wires (a clock line and a data line) regardless of how many modules are on the bus.

Instead of generating 16 separate, carefully timed PWM signals itself, the microcontroller simply sends I2C messages to the PCA9685 specifying which channel to update and what PWM value to set. The PCA9685 handles the signal generation independently, producing stable and accurate pulses at all 16 outputs simultaneously. This dramatically reduces the processing burden on the microcontroller and ensures that all servo signals are generated with consistent, hardware-accurate timing.

=== PCA9685 Pin Description

The PCA9685 module exposes several groups of pins. The *power pins* include VCC (logic supply, typically 3.3V or 5V from the microcontroller), GND (ground), and V+ (a separate power rail for the servo motors, supplied by an external power source capable of delivering the current the motors require). The *I2C communication pins* are SDA (serial data) and SCL (serial clock), which connect directly to the corresponding I2C pins on the microcontroller. The *PWM output channels* (numbered 0 through 15) are 3-pin headers — ground, power, and signal — that connect directly to servo motor cables. Each header pin corresponds to the standard servo wire colour convention: *GND* connects to the *brown or black* wire, *V+* connects to the *red* wire, and the *PWM signal* pin connects to the *orange, yellow, or white* wire.

#workshop-note[The workshop robotic arm uses a PCA9685 to control four servo motors across channels 0 through 3. The wiring and programming of this module are covered in detail in the hands-on guide.]


== Microcontrollers: The Brain of the Robot

Think about how your own body works. Your brain receives streams of information from your eyes, ears, and skin, processes it all in fractions of a second, decides what to do, and sends signals to your muscles to carry out those decisions. A robot needs something analogous — a central processing unit that can read sensor data, run the robot's program, make decisions, and send commands to actuators.

This role is filled by the *microcontroller*.

A microcontroller is a small, self-contained programmable computer built for controlling hardware. Unlike a desktop computer, which is designed for general-purpose computing tasks, a microcontroller is optimised for direct interaction with electronic components: reading sensors, toggling outputs, generating timed signals, and communicating with other devices. Microcontrollers are everywhere — in your washing machine, your microwave oven, your car, your alarm clock, your TV remote control. They run the world quietly in the background, and in a robot, they run the show.

In a robotic system, the microcontroller continuously manages all operations. It reads sensor data, evaluates the programmed logic to decide what action to take, and sends the appropriate commands to motor drivers, servo drivers, or other output devices. Without the controller, all the mechanical and electrical components of a robot are just an expensive pile of parts.

=== Popular Microcontrollers in Robotics

Many different microcontrollers are used in robotics, ranging from the very simple to the extremely powerful. *Arduino* boards (based on Atmel/Microchip AVR chips) are the most widely used in education and hobby robotics, valued for their simplicity and the enormous library of tutorials and community support around them. *ESP32* boards add built-in Wi-Fi and Bluetooth, making them popular for connected robots. *Raspberry Pi Pico* offers a capable microcontroller at very low cost. *STM32* chips are favoured in more advanced and performance-demanding applications. At the upper end, systems like the *Raspberry Pi* or *NVIDIA Jetson* are full embedded computers running Linux, used in robots that require computer vision or AI inference.

=== Arduino Nano

For compact robotic systems and educational projects, one of the most popular choices is the *Arduino Nano* — a small, breadboard-friendly microcontroller development board based on the *ATmega328P* microcontroller chip.

#figure(
  image("assets/29_arduino_nano.jpg",),
  caption: [Arduino Nano microcontroller development board.]
)

Despite its compact size (roughly 45 mm × 18 mm), the Arduino Nano packs in everything needed to control a multi-servo robotic system. It has 14 digital input/output pins (6 of which can generate PWM signals), 8 analogue input pins, hardware support for I2C, SPI, and UART serial communication, and runs its program at 16 MHz. It can be powered and programmed through a standard USB cable, and its pin headers plug directly into a standard breadboard — making it ideal for rapid prototyping and educational use.

The key specifications of the Arduino Nano are:
- *Microcontroller:* ATmega328P
- *Operating Voltage:* 5 V
- *Clock Speed:* 16 MHz
- *Digital I/O Pins:* 14 (of which 6 support PWM)
- *Analogue Input Pins:* 8
- *Communication:* UART, I2C, SPI

These features make the Nano well suited to reading sensors, communicating with driver modules via I2C, and generating the control signals needed to run a multi-joint robotic arm.


== Writing Robot Programs

A robot with functioning hardware but no program is useless — it simply sits there waiting for instructions that never come. Programming is the process of providing those instructions: telling the robot exactly what to do, when to do it, and how to respond to different situations.

For Arduino-based systems, programs are written using the *Arduino Framework* — a beginner-friendly programming environment built on top of the C++ programming language. The Arduino Framework provides a simplified way to interact with hardware, wrapping complex low-level operations into easy-to-use functions. It also comes with a huge ecosystem of libraries — pre-written code packages that make it easy to control common devices such as servo drivers, displays, and sensors without having to understand every detail of how they work at the hardware level.

=== The Arduino IDE

Arduino programs are written, compiled, and uploaded using the *Arduino IDE* (Integrated Development Environment) — a free, cross-platform software application. The IDE provides a text editor for writing code, a compiler that translates your code into machine instructions the microcontroller can execute, and an uploader that sends the compiled program to the board via USB. It also includes a *Serial Monitor* — a small terminal window that lets you send text to and receive text from the running Arduino over USB, which is extremely useful for debugging and for building computer-controlled systems.

An Arduino program is called a *sketch* and is saved with the `.ino` file extension.

=== Serial Communication

Once a program is running on the Arduino, you often need the microcontroller to *talk to the outside world* — sending data to a computer, receiving commands, or printing debug messages so you can see what is happening inside your code. The primary way Arduino does this is through *serial communication*.

Serial communication is a method of transferring data where bits are sent *one after another* along a single wire — as opposed to parallel communication, where multiple bits travel simultaneously on multiple wires. Serial is simpler, requires fewer wires, and works reliably over longer distances, which is why it became the dominant method for connecting microcontrollers to computers and to each other.

==== Types and Standards of Serial Communication

Several distinct serial communication standards are used in electronics and robotics. They differ in how many wires they use, how many devices can be connected, and what speeds they support.

*UART (Universal Asynchronous Receiver Transmitter)* is the most fundamental form of serial communication and the one Arduino uses to talk to your computer over USB. UART uses two signal wires — *Tx* (transmit) and *Rx* (receive) — plus a shared ground. It is called "asynchronous" because both sides agree on a speed in advance (the *baud rate*) rather than sharing a clock signal. The Arduino IDE's Serial Monitor and most serial terminal programs communicate over UART.

*I2C (Inter-Integrated Circuit)* uses just two wires — *SDA* (data) and *SCL* (clock) — and allows a single controller to communicate with many devices on the same two-wire bus by addressing each one with a unique identifier. It is commonly used for sensors and driver modules such as the PCA9685. I2C is slower than SPI but requires fewer wires and supports many devices on one bus.

*SPI (Serial Peripheral Interface)* uses four wires — *MOSI*, *MISO*, *SCK*, and *CS* — and is faster than I2C. It is used for high-speed devices such as SD card modules, display screens, and certain sensors. SPI is synchronous: a shared clock wire keeps both sides in step.

*RS-232* is an older standard still found in industrial equipment, test instruments, and some legacy systems. It uses higher voltage levels (±12 V) than the 0–5 V TTL logic of microcontrollers, so a level-shifter chip is needed to connect an Arduino to an RS-232 device.

*USB (Universal Serial Bus)*, while not a simple serial line in the traditional sense, is itself based on serial data transfer and is what physically connects your Arduino to your computer. On the Arduino Nano, a small USB-to-UART bridge chip (the CH340 or FT232) converts between the computer's USB connection and the ATmega328P's UART pins, so from the microcontroller's point of view it is simply sending and receiving UART data.

==== Baud Rate

The *baud rate* is the speed of a UART serial connection, expressed in *bits per second (bps)*. Both sides of a UART connection must be set to the same baud rate — if they differ, the received data will be garbled. Common baud rates you will encounter are:

#figure(
  table(
    columns: (auto, 1fr),
    align: (center, left),
    table.header([*Baud Rate*], [*Typical Use*]),
    [9600],   [Default for many beginner sketches and sensor modules.],
    [19200],  [Moderate-speed sensor and module communication.],
    [57600],  [Faster data logging and GPS modules.],
    [115200], [High-speed Arduino communication; used in this robotic arm project.],
    [250000], [Used by 3D printer firmware (Marlin) and high-throughput systems.],
  ),
  caption: [Common UART baud rates and their typical applications.]
)

Higher baud rates transfer data faster but are more sensitive to cable quality and electrical noise over long distances. For short USB connections between an Arduino and a computer, 115200 baud is reliable and fast enough for real-time control applications.

==== Serial Port Names: Windows and Linux

When you connect an Arduino to a computer, the operating system assigns it a *serial port name* — a software address you use to open a connection to the device.

On *Windows*, serial ports are named *COM* followed by a number — for example `COM3`, `COM7`, or `COM11`. The Arduino IDE automatically detects available COM ports and lists them in the *Tools → Port* menu. You can also find the assigned port in the Windows Device Manager under "Ports (COM & LPT)".

On *Linux* and *macOS*, serial devices appear as files inside the `/dev/` directory. Arduino boards typically appear as `/dev/ttyUSB0` or `/dev/ttyUSB1` (when using a CH340 USB-to-UART chip) or `/dev/ttyACM0` (when using an ATmega16U2 USB interface, as on the Arduino Uno). The Arduino IDE on Linux lists available ports in the same *Tools → Port* menu, reading directly from `/dev/`.

In your Arduino code, you open the serial connection in `setup()` with a single line specifying the baud rate:

```cpp
void setup() {
  Serial.begin(115200);
}
```

From that point, you can send data to the computer with `Serial.print()` or `Serial.println()`, and check for incoming data with `Serial.available()` and `Serial.read()` or `Serial.readStringUntil()`. The Arduino IDE's *Serial Monitor* (the magnifying-glass icon in the top-right of the IDE) opens a terminal window connected to whichever COM or `/dev/` port is selected, letting you type commands to the Arduino and read its responses in real time.

=== The Structure of an Arduino Program

Every Arduino sketch has the same two-part structure. The first part is the `setup()` function, which runs *once* when the microcontroller is powered on or reset. You use `setup()` to initialise hardware, configure pins, start communication interfaces, and do anything else that needs to happen once at the beginning. The second part is the `loop()` function, which runs *continuously and repeatedly* for as long as the board has power. Everything the robot does on an ongoing basis — reading sensors, updating motor positions, checking for incoming commands — goes inside `loop()`.

```cpp
void setup() {
  // Runs once at startup
}

void loop() {
  // Runs repeatedly, forever
}
```

You can think of `setup()` as the moment the robot wakes up and gets ready, and `loop()` as the robot's heartbeat — the continuous pulse of activity that keeps it running.

=== Variables, Logic, and Decision Making

Real robot programs need to store values and make decisions. *Variables* are named storage locations in memory that hold values — numbers, text, true/false states — that the program can read and modify.

*Conditional statements* let the program branch and make decisions:

```cpp
int angle = 90;

void setup() {
}

void loop() {
  if (angle > 45) {
    // Move one way
  } else {
    // Move another way
  }
}
```

This kind of logic is what allows a robot to respond differently to different situations — stopping when an obstacle is detected, adjusting its grip when a force sensor signals resistance, or selecting a different motion sequence based on a command received from a computer.

=== External Libraries

One of the most powerful features of the Arduino ecosystem is its library system. A *library* is a collection of pre-written code that provides a simple programming interface to a complex hardware device or algorithm. Instead of writing dozens of lines of low-level code to communicate with a servo driver chip, you simply include the relevant library and call its high-level functions.

For the robotic arm system, two libraries are particularly important:

```cpp
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
```

`Wire.h` is the standard Arduino library for I2C communication — it handles all the low-level detail of sending and receiving data over the two-wire I2C bus. `Adafruit_PWMServoDriver.h` provides a simple interface to the PCA9685 servo driver, allowing you to set any servo channel to any PWM value with a single function call.

=== Example: Moving a Servo

The following program initialises the PCA9685 servo driver and then repeatedly moves a servo on channel 0 between two positions:

```cpp
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();

void setup() {
  pwm.begin();
  pwm.setPWMFreq(50);
}

void loop() {
  pwm.setPWM(0, 0, 102);   // Move to one position
  delay(1000);

  pwm.setPWM(0, 0, 512);   // Move to another position
  delay(1000);
}
```

`pwm.begin()` initialises the driver; `pwm.setPWMFreq(50)` sets the PWM frequency to 50 Hz (the standard for hobby servos); and `pwm.setPWM(channel, on_tick, off_tick)` sets the pulse timing on a given channel. The values 150 and 350 are raw PWM counts that correspond to specific pulse widths — and therefore to specific servo angles.

This tiny program is a prototype of the full robotic arm controller. The same ideas — initialising the driver, setting frequencies, sending PWM values to specific channels — scale up directly to controlling a full four-joint arm.

=== A Note on the LED Blink Example

One of the very first programs most students write on an Arduino is a simple LED blink:

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

This program might look almost trivially simple, but it demonstrates every core concept of Arduino programming: configuring a pin (`pinMode`), setting a digital output (`digitalWrite`), and timing with `delay`. The same building blocks appear in every more complex program you will ever write on an Arduino — they just get combined in more sophisticated ways.

#workshop-note[The robotic arm in this workshop is controlled by an Arduino Nano communicating with a PCA9685 over I2C. You will write and upload programs in the Arduino IDE during the hands-on session.]
// file: electrical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)






#raw(
  read("assets/arduino/robot_test_example1.ino"),
  lang: "cpp",
  block: true,
)



#pagebreak()

Now that you understand the mechanical structure of a robotic arm, let's explore the electrical system that brings it to life.

The electrical system is responsible for powering, controlling, and coordinating all movements of the robot.

Without electronics, the mechanical parts would remain completely static.

In a 3D-printed robotic arm, the electrical system connects sensors, motors, and the microcontroller into a single working system.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/electrical-system-overview.jpg"),
//   caption: [Image: Overview of robotic arm electrical connections]
// )

== Overview of the Electrical System

The electrical system of a robotic arm is made up of four main parts:

- Power supply  
- Microcontroller (control unit)  
- Motor drivers  
- Actuators (motors)  

Each part plays a specific role in making the robot function correctly.

Together, they form a complete control chain:
Power → Control → Drive → Motion

== Power Supply

The power supply provides energy to all electronic components.

Common power sources include:
- Battery packs (portable systems)  
- DC adapters (stationary systems)  
- USB power (for small prototypes)  

Important considerations:
- Voltage must match component requirements  
- Current must be sufficient for all motors  
- Stable power prevents system resets and glitches  

Servo motors often require more current than the microcontroller can supply directly.

== Microcontroller (Control Unit)

The microcontroller is the brain of the robotic arm.

A commonly used controller is the Arduino Nano.

Its responsibilities include:
- Reading control inputs  
- Sending signals to motors  
- Coordinating movement of joints  
- Running programmed instructions  

The microcontroller operates using low-power digital signals.

It cannot directly power motors, which is why motor drivers are needed.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/microcontroller-board.jpg"),
//   caption: [Image: Arduino Nano microcontroller used in robotic arm]
// )

== Motor Drivers

Motor drivers act as a bridge between the microcontroller and motors.

They are necessary because:
- Microcontrollers output low current  
- Motors require higher current and voltage  

Motor drivers:
- Amplify control signals  
- Protect the microcontroller  
- Allow safe motor operation  

In robotic arms, servo motors are often controlled directly via PWM signals, but driver circuits may still be used in more advanced setups.

== Actuators (Motors)

Actuators convert electrical energy into motion.

In a robotic arm, the most commonly used actuator is the servo motor.

Types of motors used:
- Servo motors → precise angular control (most important for joints)  
- DC motors → continuous rotation (less common in arms)  
- Stepper motors → precise step movement (used in advanced systems)  

Servo motors are controlled using PWM (Pulse Width Modulation) signals from the microcontroller.

Each pulse defines a specific angle of rotation.

== Wiring System

Wiring connects all electrical components together.

A proper wiring system ensures:
- Stable communication between components  
- Safe power distribution  
- Reduced electrical noise and interference  

Basic wiring connections include:
- Power supply to motors and drivers  
- Microcontroller signal pins to motor control lines  
- Shared ground connection between all components  

A common mistake is missing a shared ground, which causes unstable behavior.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/wiring-diagram.jpg"),
//   caption: [Image: Wiring diagram of robotic arm electronics]
// )

== Control Signals

Control signals are how the microcontroller communicates with motors.

In most robotic arms, signals are sent using PWM.

PWM works by:
- Sending pulses at regular intervals  
- Changing pulse width to control motor angle  
- Allowing precise movement control  

Example:
- Short pulse → smaller angle  
- Long pulse → larger angle  

This enables smooth and accurate joint movement.

== Electrical Safety Considerations

When working with robotics electronics, safety is important.

Key guidelines:
- Never overload power supply  
- Avoid loose connections  
- Ensure correct polarity (+ and -)  
- Use proper insulation for wires  
- Disconnect power before modifications  

Incorrect wiring can damage components permanently.

== Arduino Programming

Arduino programming is the way we give instructions to the robotic arm.

It allows the microcontroller to decide how the robot should behave, when each joint should move, and how movements should be coordinated.

Without programming, the robotic arm is only a mechanical structure. With programming, it becomes an active and controllable system.

=== Role of Arduino in a Robotic Arm

The Arduino acts as the central control unit of the robot.

Its main responsibilities include:
- Interpreting instructions written by the user  
- Controlling servo motor positions  
- Coordinating multiple joints together  
- Repeating actions in a continuous loop  

It continuously reads the programmed logic and converts it into electrical signals that drive the motors.

=== How Arduino Thinks

The Arduino does not “think” like a human. Instead, it follows instructions step by step in a very strict order.

It repeatedly:
1. Reads the instructions written in the program  
2. Sends signals to different output pins  
3. Waits for a short time if required  
4. Repeats the process again  

This continuous repetition allows the robotic arm to perform smooth and ongoing movements.

=== Controlling Movement

In a robotic arm, movement is controlled by sending specific position commands to servo motors.

Each servo represents one joint of the arm, and the Arduino decides:
- The angle of each joint  
- The timing of movement  
- The sequence in which joints move  

By changing these values, different robotic actions can be created.

=== Timing and Coordination

Timing is an important part of robotic control.

The Arduino uses timing to:
- Hold positions for a certain duration  
- Create delays between movements  
- Synchronize multiple joints  
- Ensure smooth transitions between actions  

Proper timing makes the robotic arm look stable and natural in motion.

=== Multi-Joint Control

Most robotic arms have more than one joint.

Arduino handles this by controlling each motor separately but in coordination with others.

This allows:
- Simultaneous movement of multiple joints  
- Sequential motion (one joint after another)  
- Complex movement patterns  

This coordination is what enables the robotic arm to perform useful tasks.

=== Why Programming is Important

Programming is what transforms the robotic arm from a static machine into a functional robot.

It allows:
- Custom movement patterns  
- Repeatable actions  
- Precise control over motion  
- Adaptability for different tasks  

Without programming, all motors would remain inactive or uncontrolled.

=== Summary

Arduino programming is the decision-making layer of the robotic arm.

It connects human instructions to physical movement by controlling motors through logical sequences.

This is what enables the robot to perform structured, repeatable, and meaningful actions.
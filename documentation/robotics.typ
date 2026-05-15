// file: robotics.typ

Now that you know what robotics is in general, let’s understand how robots actually work.

Think of a robot as a system made of different parts that work together — similar to how the human body functions.

A robot generally:
- Senses its environment  
- Processes information  
- Performs actions using movement  

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/robot-system-block-diagram.jpg"),
//   caption: [Image: Basic block diagram of a robotic system showing input, processing, and output]
// )

Every robot system can be understood in three main parts:

- Input (Sensors) → helps the robot understand the environment  
- Processing Unit → the brain of the robot  
- Output (Actuators) → enables movement or action  

For example:
- A camera acts as an input sensor  
- A microcontroller like Arduino acts as the brain  
- Motors act as output devices  



Robots are also built physically using mechanical structures.

A robot consists of:
- Links → rigid parts (like bones in the human body)  
- Joints → movable connections between links  

Together, links and joints form the structure of a robot.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/robot-link-joint-diagram.jpg"),
//   caption: [Image: Diagram showing links and joints in a robotic arm]
// )

A robotic arm is a perfect example of this structure.

Each segment is a link, and each rotating part is a joint.



One important concept in robotics is Degrees of Freedom (DoF).

DoF refers to how many independent movements a robot can make.

For example:
- Your shoulder, elbow, and wrist all move differently  
- Each movement adds one degree of freedom  

So:
- More DoF → more flexible robot  
- Less DoF → simpler robot  

A basic robotic arm usually has 3 to 6 degrees of freedom.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/robotic-arm-dof.jpg"),
//   caption: [Image: Robotic arm showing different joints and degrees of freedom]
// )

Robots also need a control system to operate.

The control system decides:
- What should move  
- When it should move  
- How much it should move  

A microcontroller like Arduino is often used as the control unit in simple robots.



Robots also have an electrical system that powers everything.

Main electrical components include:
- Microcontroller (control brain)  
- Power supply (battery or adapter)  
- Motor drivers (interface between control and motors)  
- Motors (movement system)  

Motor drivers are important because:
- Microcontrollers give small signals  
- Motors need higher power  
- Drivers act as a bridge between them  

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/motor-driver-circuit.jpg"),
//   caption: [Image: Motor driver circuit connected to microcontroller and motors]
// )

Actuators are the parts that create movement.

Common types include:
- Servo motors → precise angle control (used in robotic arms)  
- DC motors → continuous rotation  
- Stepper motors → step-by-step controlled movement  

Servo motors are most commonly used in robotic arms because they allow precise positioning.



Sensors help robots understand their surroundings.

Examples include:
- Distance sensors → measure how far objects are  
- Cameras → provide visual input  
- Touch sensors → detect contact  

In advanced systems, sensors make robots more intelligent and responsive.

#[
  #rect(
    width: 100%,
    height: 6cm,
    stroke: 1pt + gray,
    fill: rgb(245, 245, 245)
  )
]

// #figure(
//   image("path/to/robot-sensors.jpg"),
//   caption: [Image: Different types of sensors used in robotics systems]
// )

Finally, all these systems work together:

1. Sensors collect data  
2. Controller processes information  
3. Motor drivers send power signals  
4. Motors perform movement  
5. Robot completes the action  

This continuous loop is what makes a robot function intelligently.
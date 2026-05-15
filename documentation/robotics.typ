// file: robotics.typ

A robotic system is created by combining mechanical structures, electronic circuits, sensors, actuators, and programmable control systems into a single integrated machine.

In simple terms:
- The mechanical structure provides movement and support
- Sensors collect information from the environment
- Actuators such as motors create motion
- Electronic circuits distribute power and signals
- A controller or microcontroller processes instructions and coordinates all operations

Together, these components allow a robot to sense, process, decide, and act.

Modern robotics combines concepts from:
- Mechanical Engineering
- Electronics and Electrical Systems
- Computer Programming
- Control Systems and Automation
- Artificial Intelligence and Embedded Systems

Depending on their design, robots can perform tasks autonomously or under human supervision. Industrial robotic arms, mobile robots, drones, medical robots, and space robots are all built using these same fundamental principles.


== 1.1 Historical Development @Jazar2022

The idea of robots and automated machines has existed for a long time, but modern robotics began developing during the 20th century.

Around 1938, one of the first position-controlling machines was created for spray painting. Later, during World War II, engineers developed *teleoperators* — machines that allowed people to safely handle radioactive and hazardous materials from a distance.

Another important technology was *Computer Numerical Control (CNC)*, which improved the precision of industrial machines and manufacturing.

By combining these ideas, engineers began creating programmable mechanical systems that eventually became modern robots.

In 1954, George Devol designed one of the first programmable robots. Later, in the early 1960s, Joseph Engelberger helped commercialize industrial robots called *Unimates* through his company *Unimation*. Because of his contributions, Engelberger is often called the “Father of Robotics.”

Industrial robotic arms became increasingly popular after 1960, especially in automobile factories where robots could perform repetitive tasks with high speed and precision. During the 1980s, the robotics industry grew rapidly due to major investments in industrial automation.

Today, robotics continues to evolve with artificial intelligence, advanced sensors, and automation systems, making robots smarter and more capable than ever before.


== Functional Architecture of a Robot

Every robotic system can be understood using three main functional parts:

- *Input (Sensors)* → helps the robot detect and understand its environment  
- *Processing Unit* → processes information and makes decisions  
- *Output (Actuators)* → performs movement or physical actions  

A robot continuously follows this cycle:
*sense → process → act*

#figure(
  image("assets/07_robot_flow.jpg"),
  caption: [Functional flow of a robotic system.]
)

For example:
- A camera or distance sensor acts as an input device
- A microcontroller such as Arduino acts as the processing unit
- Motors or servos act as output devices that create movement

All modern robots — from industrial robotic arms to autonomous vehicles — are built using this same basic architecture.



== Components of a Robot @Jazar2022

A robot is made by combining mechanical, electronic, and control systems into a single working machine. Although robots can have different shapes and purposes, most robotic systems are built using a common set of components.

=== Links

The rigid structural parts of a robot are called *links*. These form the body of the robot and provide support and movement structure.

In a robotic arm, each segment between two joints is considered a link. Links are usually designed to be strong, lightweight, and capable of handling mechanical forces during movement.


=== Joints

*Joints* connect two links together and allow relative movement between them.

The two most common types of joints are:
- *Revolute Joint (R)* → allows rotational motion like a hinge
- *Prismatic Joint (P)* → allows linear sliding motion

Joints determine how a robot moves and how many directions of movement it can achieve.

#figure( 
  image("assets/08_robot_component.jpg"),
  caption: [Components of a robotic system.]
)<08_robot_component>


=== Manipulator

The main mechanical structure of a robot consisting of links and joints is called the *manipulator*.

In robotic arms, the manipulator is responsible for positioning and moving the robot’s working end to different locations. Most industrial robotic arms are manipulators designed for precise and controlled motion.


=== Wrist

The *wrist* is the section near the end of the robotic arm that provides flexible orientation and fine adjustment.

It helps the robot rotate or tilt the end-effector to perform tasks from different angles, similar to the wrist movement of a human hand.


=== End-Effector

The *end-effector* is the tool attached at the end of the robot.

It is the part that directly interacts with objects and performs the actual work. Different robots use different end-effectors depending on the application.

Examples include:
- Grippers for picking objects
- Welding tools
- Surgical instruments
- Vacuum suction tools

See @08_robot_component for an example of a robotic arm with its components labeled.


=== Actuators

*Actuators* are the components that create movement in a robot. They act like the muscles of the robotic system.

Common actuators include:
- Servo motors
- DC motors
- Pneumatic cylinders
- Hydraulic systems

Actuators provide the force required to move links and joints.

#figure( 
  image("assets/09_robot_actuators.jpg"),
  caption: [Various types of actuators used in robotics.]
)

=== Sensors

*Sensors* allow the robot to collect information about itself and its surroundings.

Sensors help robots measure:
- Position
- Distance
- Speed
- Force
- Temperature
- Light and sound

The information collected by sensors is sent to the control system for decision making.

#figure( 
  image("assets/10_robot_sensor.jpg"),
  caption: [Various types of sensors used in robotics.]
)


=== Controller

The *controller* acts as the brain of the robot.

It receives information from sensors, processes instructions, and controls the actuators to perform the required movement or action.

Modern robots commonly use:
- Microcontrollers such as Arduino
- Embedded processors
- Industrial control systems

The controller coordinates all robot operations and ensures that the system functions correctly and safely.

#figure( 
  image("assets/11_arduino_nano.jpg"),
  caption: [Arduino Nano microcontroller.]
)



== Robot Classifications @Jazar2022

Robots can be classified in different ways depending on their design, control system, movement, and application. Different organizations and researchers use various classification methods to describe robotic systems.


=== Classification by Capability

One common classification groups robots according to how they are controlled and how intelligently they operate.

- *Manual Handling Devices*  
  Robots directly controlled by a human operator.

- *Fixed Sequence Robots*  
  Robots that repeatedly perform a predefined sequence of actions.

- *Programmable Robots*  
  Robots whose operation sequence can be modified through programming.

- *Playback Robots*  
  Robots that record human-guided motions and repeat them automatically.

- *Numerically Controlled Robots*  
  Robots controlled using programmed motion instructions.

- *Intelligent Robots*  
  Robots capable of sensing their environment, making decisions, and adapting to changing conditions.


=== Classification by Geometry

Robots can also be classified according to their mechanical structure.

- *Serial Manipulators*  
  Robots with links connected in an open chain structure. Most robotic arms belong to this category.

- *Parallel Manipulators*  
  Robots with closed-loop structures that provide high rigidity and precision.

  #figure( 
    image("assets/12_serial_parallel_manipulator.jpg"),
    caption: [Serial (right) and parallel (left) manipulators.]
  )

- *Hybrid Manipulators*  
  Robots that combine both serial and parallel mechanisms.

Robotic systems mainly use two types of joints:
- *Revolute Joints (R)* → rotational movement
- *Prismatic Joints (P)* → linear movement

  #figure( 
    image("assets/13_RP_joints.jpg"),
    caption: [Revolute (R) and Prismatic (P) joints. @Jazar2022]
  )


=== Classification by Workspace

The *workspace* of a robot is the total region that its end-effector can reach.

- *Reachable Workspace*  
  All positions the robot can access.

- *Dexterous Workspace*  
  Positions where the robot can reach with all required orientations.

The workspace depends on the robot's geometry, link lengths, and joint limitations.


=== Classification by Actuation

Robots are also categorized according to the type of actuator used to create motion.

- *Electric Robots*  
  Use electric motors and are widely used because they are clean, precise, and easy to control.

  #figure( 
    image("assets/14_robot_electrical.jpg"),
    caption: [Electric robot with various electrical components.]
  )


- *Hydraulic Robots*  
  Use fluid pressure and are suitable for heavy loads and high-force applications.

  #figure( 
    image("assets/15_robot_hydroluics.jpg"),
    caption: [Hydraulic robot with various hydraulic components.]
  )


- *Pneumatic Robots*  
  Use compressed air and are commonly used in fast industrial automation systems.

  #figure( 
    image("assets/16_robot_pneumatic.jpg"),
    caption: [Pneumatic robot with various pneumatic components.]
  )


=== Classification by Control System

Based on control methods, robots are divided into:

- *Servo Robots (Closed-Loop Control)*  
  Use sensors and feedback systems for accurate motion control.

- *Non-Servo Robots (Open-Loop Control)*  
  Operate without feedback and usually follow fixed motions.

  #figure( 
    image("assets/17_openloop_closedloop_robot.jpg"),
    caption: [Open-loop (left) and closed-loop (right) control systems.]
  )


Servo robots can further be divided into:
- *Point-to-Point Robots* → move between predefined points
- *Continuous Path Robots* → precisely control the entire motion path


=== Classification by Application

Robots are designed for many different applications, including:
- Industrial manufacturing
- Pick-and-place operations
- Welding and painting
- Medical and surgical assistance
- Space and underwater exploration
- Inspection and quality control
- Rescue and hazardous environment operations

Many industrial robotic arms are designed to resemble the movement of a human arm, which is why they are often called *anthropomorphic robots*.



== Degrees of Freedom (DoF)

One of the most important concepts in robotics is *Degrees of Freedom (DoF)*.

Degrees of Freedom describe the number of independent movements a robotic system can perform. Each joint that allows a separate movement adds one degree of freedom to the robot.

For example, in the human arm:
- The shoulder can rotate in multiple directions
- The elbow allows bending movement
- The wrist provides additional rotation and flexibility

Each independent motion contributes to the total degrees of freedom.

In robotics:
- More DoF → greater flexibility and range of motion
- Fewer DoF → simpler design and easier control

A simple robotic arm may have 3 DoF, while advanced industrial and humanoid robots can have 6 or more DoF for highly precise and complex movement.

  #figure( 
    image("assets/18_robot_dof.jpg"),
    caption: [Degrees of freedom in a robotic arm.]
  )
// file: mechanical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)


The mechanical structure forms the physical foundation of every robotic system. It determines how the robot moves, carries loads, maintains stability, and interacts with its environment.

In robotics, mechanical design includes components such as links, joints, gears, end effectors, and fastening elements. Proper mechanical design is important for achieving strength, precision, flexibility, and smooth movement.

In this section, we will explore the major mechanical elements used in robotic systems and understand how they work together to create controlled robotic motion.

== Links

Links are the rigid structural members that form the body of a robotic arm. They connect different joints together and provide support for movement and load handling.

The length and shape of links directly affect the robot’s reach, strength, and workspace.


== Joints

Joints connect two links and allow movement between them. They determine how the robot moves and how flexible the robotic system becomes.

Most robotic arms use:
- Revolute joints for rotational movement
- Prismatic joints for linear movement

Each movable joint contributes to the robot’s degrees of freedom.

#figure(
  image("assets/19_link_joint_sch.jpg"),
  caption: [Schematic diagram showing links and joints in a robotic arm.]
)


== End Effectors

The end effector is the working tool attached at the end of a robotic arm. It directly interacts with objects and performs the required task.

Different robots use different end effectors depending on the application.

Common examples include:
- Grippers
- Vacuum suction tools
- Welding tools
- Surgical instruments

// #figure(
//   image("assets/end_effector_placeholder.jpg"),
//   caption: [Examples of robotic end effectors.]
// )



== Gears

Gears are mechanical components used to transfer motion and torque between moving parts.

In robotics, gears are commonly used to:
- Increase torque
- Reduce motor speed
- Improve movement precision
- Transfer rotational motion efficiently

Servo motors often use internal gear systems to achieve accurate and controlled movement.

#figure(
  image("assets/20_gears.jpg"),
  caption: [Variety of gears.]
)

#figure(
  image("assets/21_gears_working.jpg"),
  caption: [Transfer of energy/motion through gears.]
)



== Screw Specification

Screws are used to securely assemble the mechanical components of the robotic arm.

Different screw sizes are selected depending on:
- Component thickness
- Required strength
- Assembly location

In this workshop, small metric screws such as M2 and M3 screws are commonly used for mounting motors, links, and structural components.

Screw specifications are usually written in a standard format such as:

*M2#sym.times\3#sym.times\0.2*

This represents:
- *M2* → Screw diameter of 2 mm
- *3* → Screw length of 3 mm
- *0.2* → Thread pitch of 0.2 mm

The thread pitch indicates the distance between two adjacent threads. In many robotics applications, the pitch value is often omitted because standard pitch screws are commonly used.

#figure(
  image("assets/24_metric_screws.jpg"),
  caption: [Reading Specification for Metric Screws.]
)


Screws also differ by head shape and drive type depending on the application:

- *Phillips Head* → Common cross-shaped drive used in general assembly
- *Slotted Head* → Single-slot screw used in simple applications
- *Hex Socket* → Uses Allen keys and provides better grip and torque
- *Torx Head* → Star-shaped drive used for high-torque and precision assembly

Common mounting styles include:
- *Countersunk Screws* → Sit flush with the surface
- *Counterbore Screws* → Sit inside a recessed cylindrical hole
- *Pan Head Screws* → Rounded top used for general mounting

Different screw types are selected based on strength, appearance, available space, and ease of assembly.

#figure(
  image("assets/22_screw_heads.jpg"),
  caption: [Various types of screw heads and drive types.]
)

#figure(
  image("assets/23_screw_types.jpg"),
  caption: [Various types of screw for different applications.]
)

== Mechanical Assembly

In this section, we will assemble the mechanical structure of the 3D-printed robotic arm step by step.

=== Step 1: Base Assembly

*Required Components:*
- Base Cover Box — 1 pc.
- Base Mount — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\10 Screws — 4 pcs.
- M2#sym.times\6 Screw — 1 pc.

Place the *Base Mount* on top of the *Base Cover Box* and align the screw holes properly.

Secure the two parts together using four *M2#sym.times\10 screws*.

Next, insert the *Servo Motor* into the motor slot with the shaft facing inward toward the holder. Route the motor wires through the designated wire channel to keep them organized.

Finally, fix the servo motor in place using one *M2#sym.times\6 screw*.

Please see @mech_assembly_1 for a visual reference of the base assembly.

#figure(
  image("assets/assembly/base1_assembly.jpg"),
  caption: [Mechanical Assembly of the Base Structure.]
) <mech_assembly_1>


=== Step 2: Mounting the First Link

*Required Components:*
- Link 1 — 1 pc.
- Servo Arm Full — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.

Place the *Servo Arm Full* into the dedicated groove inside *Link 1*.

Then position *Link 1* onto the base structure so that the servo arm aligns correctly with the shaft of the base servo motor.

Secure *Link 1* to the servo shaft using one *M2#sym.times\6 screw*.

Next, insert the second *Servo Motor* into the motor slot on *Link 1* and fix it in place using two *M2#sym.times\6 screws*.

Please see @mech_assembly_2 for a visual reference of the first link assembly.

#figure(
  image("assets/assembly/mount1_assembly.jpg"),
  caption: [Mechanical Assembly of the First Link.]
) <mech_assembly_2>



=== Step 3: Mounting the Second Link

*Required Components:*
- Link 2 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.


Please see @mech_assembly_3 for a visual reference of the second link assembly.

#figure(
  image("assets/assembly/link2_assembly.jpg"),
  caption: [Mechanical Assembly of the Second Link.]
) <mech_assembly_3>



=== Step 4: Mounting the Third Link

*Required Components:*
- Link 3 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.  


Please see @mech_assembly_4 for a visual reference of the third link assembly.

#figure(
  image("assets/assembly/link3_assembly.jpg"),
  caption: [Mechanical Assembly of the Third Link.]
) <mech_assembly_4>





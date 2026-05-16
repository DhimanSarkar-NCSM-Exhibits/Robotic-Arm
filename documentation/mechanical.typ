// file: mechanical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)


The mechanical structure forms the physical foundation of every robotic system. It determines how the robot moves, carries loads, maintains stability, and interacts with its environment.

In robotics, mechanical design includes components such as links, joints, gears, end effectors, and fastening elements. Proper mechanical design is important for achieving strength, precision, flexibility, and smooth movement.

In this section, we will explore the major mechanical elements used in robotic systems and understand how they work together to create controlled robotic motion.

== Robotic Arm Structure

A robotic arm is mainly built using structural components such as links, joints, and end effectors. These elements work together to provide movement, flexibility, and interaction with objects.

Links form the rigid body of the robot, joints provide movement between links, and the end effector performs the actual task such as gripping or handling objects.

#figure(
  image("assets/19_link_joint_sch.jpg"),
  caption: [Schematic diagram showing links, joints, and end effector in a robotic arm.]
)


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

Do not overtighten screws while assembling 3D-printed parts, as excessive force may damage the plastic components.


=== Step 1: Base Assembly

*Required Components:*
- Base Cover Box — 1 pc.
- Base Mount — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\10 Screws — 4 pcs.
- M2#sym.times\6 Screw — 1 pc.

Place the *Base Mount* on top of the *Base Cover Box* and align the screw holes properly.

Secure the two parts together using four *M2#sym.times\10 screws*.

Next, insert the *Servo Motor* into the motor slot with the servo shaft facing inward toward the holder.

Route the servo wires through the designated wire channel to keep them organized.

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

Place the *Servo Arm Half* into the dedicated groove inside *Link 2*.

Align *Link 2* with the shaft of the servo motor mounted on *Link 1*.

Secure the link using one *M2#sym.times\6 screw*.

Next, insert the third *Servo Motor* into the motor slot and fix it using two *M2#sym.times\6 screws*.

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

Place the *Servo Arm Half* into the groove provided in *Link 3*.

Align *Link 3* with the shaft of the servo motor mounted on *Link 2*.

Secure the link using one *M2#sym.times\6 screw*.

Then mount the fourth *Servo Motor* into the motor slot and secure it using two *M2#sym.times\6 screws*.

Please see @mech_assembly_4 for a visual reference of the third link assembly.

#figure(
  image("assets/assembly/link3_assembly.jpg"),
  caption: [Mechanical Assembly of the Third Link.]
) <mech_assembly_4>



=== Step 5: Mounting the End Effector

*Required Components:*
- Driver Gear — 1 pc.
- Driven Gear — 1 pc.
- Idler Compound Gear — 1 pc.
- End Effector Claws — 2 pcs.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screw — 1 pc.
- M2#sym.times\10 Screws — 2 pcs.

Assemble the gears and end effector claws as shown in the reference figure.

Mount the *Servo Arm Half* onto the end effector mechanism and align it with the servo motor shaft.

Secure the assembly using one *M2#sym.times\6 screw*.

Finally, mount the servo motor and secure it using two *M2#sym.times\10 screws*.

Please see @mech_assembly_5 for a visual reference of the end effector assembly.

#figure(
  image("assets/assembly/end_eftr_assembly.jpg"),
  caption: [Mechanical Assembly of the End Effector.]
) <mech_assembly_5>


=== Final Mechanical Assembly

After completing all assembly steps, the mechanical structure of the robotic arm is fully assembled and ready for electronic wiring and programming.

A reference image of the complete mechanical assembly is shown in @mech_assembly_6.

#figure(
  image("assets/assembly/whole_assemblyl.jpg"),
  caption: [Final Mechanical Assembly of the Robotic Arm.]
) <mech_assembly_6>
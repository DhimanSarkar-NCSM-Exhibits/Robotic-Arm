// file: mechanical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": workshop-note

Every robot that interacts physically with the world needs a body — a mechanical structure that provides shape, support, and the ability to move. No matter how sophisticated the electronics or clever the programming, a robot cannot do useful work without a well-designed mechanical foundation.

In robotics, mechanical design covers everything from the overall structure of links and joints to the small screws that hold components in place. Getting this right matters enormously. A poorly designed mechanical system will flex, vibrate, or break under load — no amount of clever software can compensate for a structure that physically cannot do what is asked of it. Good mechanical design brings together strength, precision, lightness, and smooth motion — and balancing all four at once is what makes mechanical engineering both challenging and deeply satisfying.

In this chapter, you will explore the major mechanical elements found in robotic systems: how links and joints create movement, how gears transfer and transform forces, and how fasteners hold everything together reliably.


== Links: The Skeleton of a Robot

A *link* is any rigid structural member in a robotic system — a solid part that does not flex or bend during normal operation. Links form the skeleton of the robot, providing the physical framework that all other components are mounted to and that gives the robot its shape.

In a robotic arm, each solid segment between two adjacent joints is called a link. The base of the arm is sometimes considered a fixed link (it does not move), while all subsequent links rotate or translate relative to each other.

The design of a link involves careful trade-offs. It must be strong enough to carry the loads placed on it — the weight of subsequent links, the end-effector, and any object being handled — without bending or breaking. At the same time, it should be as light as possible, because every gram of extra weight the arm must carry reduces its speed, increases the load on its motors, and demands more power from its electrical supply. Engineers select materials such as aluminium alloys, carbon fibre composites, or high-strength plastics depending on the application. In educational and hobbyist robotics, 3D-printed plastic links are extremely common because they are cheap, customisable, and strong enough for light-duty use.


== Joints: Where Motion Happens

If links are the bones, joints are where everything comes alive. A *joint* connects two links together and defines how they can move relative to each other.

The two most fundamental types of joints in robotics are the *revolute joint* and the *prismatic joint*.

A *Revolute Joint (R)* permits rotational motion: one link pivots around an axis fixed to the other link. This is the most common type of joint in robotic arms — it is mechanically simple, produces large angular displacements with relatively small actuator movement, and closely resembles the joints of the human arm. Your elbow is a good example: it rotates your forearm relative to your upper arm in a single arc of motion.

A *Prismatic Joint (P)* permits linear sliding motion: one link slides along a fixed axis relative to the other. Rather than rotating, the joint extends or retracts, changing the distance between the two connected links. Linear actuators, telescoping segments, and sliding rails all implement prismatic motion. Prismatic joints appear frequently in gantry robots and CNC machines.

#figure(
  image("assets/13_RP_joints.jpg"),
  caption: [Revolute (R) and Prismatic (P) joints. @Jazar2022]
)

In practice, almost every robotic arm you will encounter — from the simple educational kind to the massive industrial systems in car factories — is built almost entirely from revolute joints. Their simplicity, compactness, and versatility make them the default choice.


== The Robotic Arm Structure

A robotic arm brings links and joints together in a chain, starting from a fixed base and ending at the end-effector. Each link is connected to the next by a joint, and each joint allows a certain degree of motion. The combined result is a system that can position its tip in three-dimensional space across a wide range of positions and orientations.

Understanding the structure of a robotic arm is easiest when you think of it as an engineering version of your own arm and hand. The first link from the base corresponds roughly to the upper arm; the second to the forearm; and then there may be additional links corresponding to the wrist and hand. Each joint between these links corresponds to a joint in your body.

#figure(
  image("assets/19_link_joint_sch.jpg", width: 93%),
  caption: [Schematic diagram showing links, joints, and end-effector in a robotic arm.]
)

The end-effector — the tool at the tip of the arm — is the part that actually interacts with objects in the world. It is replaceable: swap out a gripper for a welding torch, or a welding torch for a surgical instrument, and you have a completely different robot in terms of capability, even though the underlying mechanical arm is unchanged. This modularity is one of the great engineering strengths of the robotic arm design.


== Gears: Multiplying Strength and Precision

One of the most elegant mechanical inventions ever made is the *gear* — and you will find them inside almost every actuator in a robotic arm.

A gear is a toothed wheel that meshes with another toothed wheel (or a toothed rack) to transfer rotational motion from one shaft to another. When two gears of different sizes are meshed together, something very useful happens: the smaller gear (the driver) turns faster but with less torque, while the larger gear (the driven) turns slower but with more torque. This relationship is called the *gear ratio*, and it is one of the most powerful tools mechanical engineers have.

In robotics, gears serve several important purposes. They allow a small, high-speed electric motor to produce large amounts of torque by stepping down its speed through a gear train. They improve the precision of movement — because each motor rotation produces a much smaller rotation at the output, any small error in the motor position is correspondingly reduced. And they allow engineers to transmit motion around corners, between parallel shafts, or through tight mechanical arrangements that would be impossible to achieve otherwise.

#figure(
  image("assets/20_gears.jpg"),
  caption: [A variety of gear types used in mechanical systems.]
)

#figure(
  image("assets/21_gears_working.jpg"),
  caption: [Transfer of energy and motion through meshing gears.]
)

In servo motors — the actuators used in most educational and hobby robotic arms — a small electric motor spins at very high speed. Inside the servo housing, a compact gear train (often called a *gearbox* or *gear reduction*) reduces this speed dramatically while multiplying the torque. The result is an output shaft that moves slowly and precisely, with enough rotational force to move a robot joint against gravity and mechanical resistance. Without gears, the tiny motor inside a servo would spin uselessly fast without the strength to move anything.


== Fasteners: Holding It All Together

Every piece of a robot's mechanical structure must be attached to every other piece reliably. This is the job of *fasteners* — hardware components such as screws, bolts, and nuts that join parts together mechanically.

In robotics, the most commonly used fasteners are small *metric screws*, designated by the letter *M* followed by a number indicating the diameter in millimetres. The full specification of a metric screw is written in the format:

*M3#sym.times\12#sym.times\0.5*

This means:
- *M3* — the screw has a 3 mm shaft diameter
- *12* — the screw is 12 mm long
- *0.5* — the thread pitch (distance between adjacent threads) is 0.5 mm

In many practical situations, the pitch value is omitted because standard coarse-pitch screws are assumed.

#figure(
  image("assets/24_metric_screws.jpg", width: 85%),
  caption: [Reading the specification of a metric screw.]
)

Screws also differ in the shape of their head — which determines what tool is used to drive them — and in how they sit in their hole. Common *drive types* include the *Phillips head* (the familiar cross-shaped recess), the *slotted head* (a single straight slot), the *hex socket* (a hexagonal recess driven by an Allen key, providing excellent grip and torque), and the *Torx head* (a six-pointed star shape, common in precision and high-torque applications).

Mounting styles vary too. *Countersunk screws* are designed to sit flush with the surface of the material — the head tapers into a cone that fits into a matching recess, leaving a flat surface. *Counterbore screws* sit below the surface inside a cylindrical pocket, where a cap covers them. *Pan head screws* have a rounded, protruding head that sits on the surface, making them easy to install and remove.

#figure(
  image("assets/22_screw_heads.jpg", width: 82%),
  caption: [Various screw head shapes and drive types.]
)

#figure(
  image("assets/23_screw_types.jpg", width: 82%),
  caption: [Various screw types for different mounting applications.]
)

Choosing the right fastener for each location in a robotic assembly requires thinking about the available space, the load the joint must carry, the material being fastened, and how often the joint may need to be disassembled for maintenance. In 3D-printed assemblies — which are common in educational robotics — fasteners must be chosen and installed with particular care, since plastic threads are softer and easier to strip than metal ones.

#workshop-note[The robotic arm in this workshop uses M2 metric screws throughout its assembly. You will find specific screw sizes called out at each assembly step in the practical guide.]
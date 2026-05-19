// file: robotics.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": workshop-note

A robot is far more than a mechanical toy or a remote-controlled gadget. A true robotic system is a carefully engineered combination of mechanical structures, electronic circuits, sensors, actuators, and programmable intelligence — all working together as one integrated machine.

Modern robotics draws from an impressive range of disciplines: mechanical engineering gives robots their physical form and movement; electronics and electrical systems provide power and signals; computer programming supplies instructions and logic; control systems ensure accurate, stable behaviour; and increasingly, artificial intelligence allows robots to learn and adapt to their environment.

Depending on their design, robots can operate fully autonomously — making every decision on their own — or under human supervision, with a person guiding their actions from a distance. Industrial robotic arms, autonomous vehicles, surgical robots, planetary rovers, and underwater drones are all built using the same fundamental principles you are about to learn.


== How a Robot Thinks and Acts

Before diving into components and classifications, let us answer the most important question first: *how does a robot actually work?*

Every robotic system, no matter how simple or complex, follows a single fundamental cycle. It senses the world around it, processes that information to make a decision, and then acts on that decision through physical movement or output. This three-step loop — *sense, process, act* — is the heartbeat of every robot ever built.

Think of it like this: imagine you are riding a bicycle and you notice a pothole in the road ahead. Your eyes (sensors) detect the hazard. Your brain (processing unit) decides to steer around it. Your arms and legs (actuators) carry out that decision. A robot does exactly the same thing, just with cameras and distance sensors instead of eyes, a microcontroller instead of a brain, and motors instead of muscles.

#figure(
  image("assets/07_robot_flow.jpg"),
  caption: [Functional flow of a robotic system.]
)

A camera or distance sensor feeds information into the system. A microcontroller such as Arduino receives that information, runs through its programmed instructions, and decides what to do. Then motors or servo motors carry out the physical response. This cycle happens continuously — often hundreds of times per second — allowing a robot to respond to a changing environment in real time.

All modern robots, from industrial robotic arms to self-driving cars, are built around this same fundamental architecture.


== The Building Blocks of a Robot @Jazar2022

Now that you understand how a robot works conceptually, let us look at the individual components that make it happen. Think of a robot as a miniature version of the human body — each mechanical and electronic part has an analogue in your own anatomy.

=== Links

The rigid structural parts of a robot are called *links*. These form the skeleton of the robot, providing the physical framework that everything else is attached to and moves around.

In a robotic arm, each solid segment between two joints is a link. Links must be strong enough to handle mechanical forces during movement, but also as lightweight as possible — a heavier arm requires more powerful motors, which in turn require more power and more robust electronics. Engineers carefully balance strength and weight in every link they design.

=== Joints

If links are the bones, then *joints* are where the action happens. A joint is the connection between two links that allows them to move relative to each other.

There are two fundamental types of joints in robotics. A *Revolute Joint (R)* allows rotational motion — one link pivots around the other, like the hinge of a door or the rotation of your elbow. A *Prismatic Joint (P)* allows linear sliding motion — one link slides along the other in a straight line, like the piston in an engine.

The combination and arrangement of revolute and prismatic joints determines the entire movement repertoire of a robot. Most robotic arms use revolute joints almost exclusively, since rotational motion is highly versatile and closely mimics the movement of a human arm.

=== Manipulator

The complete mechanical structure formed by links and joints together is called the *manipulator*. In robotic arms, the manipulator is the long, jointed structure that positions the working end of the arm in space. Industrial robotic arms are essentially very sophisticated manipulators, engineered to position their endpoints with extraordinary precision and repeatability.

=== Wrist

Near the end of the manipulator, just before the working tool, is the *wrist*. The wrist provides fine control over orientation — allowing the robot to tilt, rotate, or angle its end tool to approach objects from different directions. This is especially important in tasks like surgery, welding, or assembly, where the approach angle matters as much as the position.

=== End-Effector

The *end-effector* is the tool attached at the very tip of the robotic arm. It is the part that directly interacts with the world and performs the actual work. Just as a human hand can hold a pen, grip a ball, or press a button, a robotic end-effector is designed and swapped out depending on the task at hand. Grippers pick up objects; welding torches join metal; vacuum suction tools lift flat surfaces; surgical instruments perform precise medical procedures.

#figure(
  image("assets/08_robot_component.jpg"),
  caption: [Components of a robotic arm with labeled parts.]
) <08_robot_component>

See @08_robot_component for a labeled view of a typical robotic arm with its components identified.

=== Actuators

*Actuators* are the muscles of the robot — the components that convert electrical energy into mechanical movement. Without actuators, a robot would be nothing but a rigid sculpture.

Common actuators used in robotics include servo motors (which rotate to precise angles), DC motors (which spin continuously and are often used in wheeled robots), stepper motors (which move in precise incremental steps), pneumatic cylinders (which use compressed air to push or pull), and hydraulic systems (which use pressurised fluid to produce very large forces).

#figure(
  image("assets/09_robot_actuators.jpg"),
  caption: [Various types of actuators used in robotics.]
)

=== Sensors

If actuators are the muscles, then *sensors* are the senses. Sensors allow the robot to gather information about both its own state and the world around it.

Sensors can measure an enormous range of physical quantities: position and orientation, distance to obstacles, speed and acceleration, applied force and pressure, temperature, light intensity, sound, and much more. All of this information flows back to the controller, where it is used to make decisions and adjust the robot's behaviour.

#figure(
  image("assets/10_robot_sensor.jpg"),
  caption: [Various types of sensors used in robotics.]
)

=== Controller

Finally, the *controller* is the brain of the robot. It receives data from sensors, runs the programmed instructions, makes decisions, and sends commands to the actuators to perform the required motion or action.

Modern robots commonly use microcontrollers — small, programmable computer chips — as their controllers. Microcontrollers such as Arduino are popular in educational and hobbyist robotics, while professional industrial robots use more powerful industrial control systems.

#figure(
  image("assets/11_arduino_nano.jpg"),
  caption: [Arduino Nano microcontroller — a common robot brain.]
)

Together, these components — links, joints, manipulator, wrist, end-effector, actuators, sensors, and controller — form the complete robotic system. Remove any one of them and the robot cannot function properly. This is what makes robotics such a rich and interdisciplinary field: it demands expertise from mechanics, electronics, and computer science all at once.


== A Short History of Robotics @Jazar2022

The dream of building machines that move and work like living creatures is ancient — appearing in myths and stories from civilisations thousands of years old. But the engineering reality of modern robotics is much more recent, shaped by a series of remarkable innovations across the twentieth century.

The story begins around 1938, when one of the first machines capable of controlling the position of a tool — used for spray painting — was developed. Then, during World War II, engineers built what they called *teleoperators*: remotely controlled mechanical arms that allowed workers to handle radioactive and hazardous materials from a safe distance. This idea — controlling a machine from far away to do dangerous work — remains central to robotics to this day.

Around the same time, another critical technology was maturing: *Computer Numerical Control (CNC)*. CNC systems allowed machines to be guided by programmed numerical instructions rather than by a human operator's hands, dramatically improving the precision and repeatability of industrial manufacturing.

These streams of invention converged in 1954, when George Devol designed one of the first truly programmable robotic systems. A few years later, Joseph Engelberger — inspired by Devol's work — founded Unimation, the world's first commercial robotics company, and began manufacturing robotic arms called *Unimates* for use in factories. For this pioneering work, Engelberger is widely regarded as the "Father of Robotics."

Throughout the 1960s and 1970s, robotic arms became increasingly established in the automobile industry, performing repetitive tasks like welding and painting with a consistency no human worker could sustain. The 1980s saw a dramatic expansion of the industry, fuelled by major investments in factory automation across manufacturing economies worldwide.

Today, robotics is evolving faster than ever before. Artificial intelligence, advanced computer vision, and miniaturised electronics are making robots smarter, more adaptable, and capable of working safely alongside human beings in ways that were science fiction just a decade ago.


== Types of Robots @Jazar2022

Not all robots are created equal. Engineers classify robots in several different ways depending on their design, control system, movement capability, and intended application. Understanding these classifications helps you quickly identify what a robot can do and how it is built.

=== Classification by Capability

One common way to group robots is by how they are controlled and how intelligently they operate.

*Manual handling devices* are directly operated by a human in real time — more of a tool than a true robot. *Fixed sequence robots* repeat the same set of actions over and over, exactly as programmed, with no ability to vary or adapt. *Programmable robots* can have their sequence of actions reprogrammed — you can change what they do by updating their software. *Playback robots* record motions guided by a human operator and then reproduce them automatically. *Numerically controlled robots* follow precise motion instructions expressed as numbers and coordinates. And *intelligent robots* represent the frontier of the field — systems capable of sensing their environment, making complex decisions, and adapting their behaviour to changing conditions.

=== Classification by Geometry

Robots can also be classified by the physical structure of their manipulator — essentially, the shape of their skeleton.

*Serial manipulators* have links connected in a single open chain, one after another, from the base to the end-effector. This is the most common architecture for robotic arms, and it closely resembles the structure of a human arm. *Parallel manipulators* use a closed-loop structure where multiple chains connect the base to the moving platform simultaneously — this makes them exceptionally rigid and precise, though at the cost of a smaller workspace. *Hybrid manipulators* combine elements of both.

#figure(
  image("assets/12_serial_parallel_manipulator.jpg"),
  caption: [Serial (right) and parallel (left) manipulators.]
)

=== Classification by Workspace

The *workspace* of a robot is the complete set of positions that its end-effector can reach. Engineers distinguish between the *reachable workspace* — every position the end-effector can get to in at least one configuration — and the *dexterous workspace* — positions where the end-effector can arrive with full freedom of orientation. The workspace of a robot depends on the number, type, and arrangement of its joints, as well as the lengths of its links.

=== Classification by Actuation

Robots are also grouped by the type of actuators that power their movement.

*Electric robots* use electric motors as their actuators. They are the most common type in use today — clean, precise, relatively quiet, and easy to control with software. *Hydraulic robots* use pressurised fluid and are capable of producing enormous forces, making them suitable for heavy industrial applications. *Pneumatic robots* use compressed air and are favoured in applications requiring fast, repetitive motions.

#figure(
  image("assets/14_robot_electrical.jpg", width: 91%),
  caption: [Electric robot with electrical drive components.]
)

#figure(
  image("assets/15_robot_hydroluics.jpg", width: 80%),
  caption: [Hydraulic robot with hydraulic drive components.]
)

#figure(
  image("assets/16_robot_pneumatic.jpg", width: 80%),
  caption: [Pneumatic robot with pneumatic drive components.]
)

=== Classification by Control System

Another important classification concerns how a robot controls its own movement.

*Servo robots*, also called *closed-loop control* robots, use sensors to continuously monitor their position and compare it to the desired position, automatically correcting any errors. This is like steering a car — you constantly adjust based on what you see. *Non-servo robots*, or *open-loop control* robots, follow their programmed instructions without any feedback — they simply execute commands and assume everything went according to plan.

#figure(
  image("assets/17_openloop_closedloop_robot.jpg", width: 100%),
  caption: [Open-loop (left) and closed-loop (right) control systems.]
)

Within servo robots, a further distinction is made between *point-to-point robots*, which move between a set of predefined positions without concern for the exact path taken between them, and *continuous path robots*, which carefully control every point along their trajectory — essential for tasks like painting or welding where the path itself matters.

=== Classification by Application

Finally, robots are often described simply by what they do. Industrial robots manufacture products; medical robots assist surgeons; agricultural robots tend crops; inspection robots examine pipelines, bridges, and aircraft; space robots explore planets and service satellites; and search-and-rescue robots navigate disaster zones to find survivors. Many robotic arms used in industry are designed to mimic the range of motion of a human arm, and for this reason they are sometimes called *anthropomorphic robots*.

#workshop-note[The robotic arm in this workshop is a serial, electric, open-loop manipulator with revolute joints — a category that covers a huge proportion of all robotic arms in real-world use.]

\
== Degrees of Freedom: Understanding Robot Motion

One of the most important concepts in all of robotics is *Degrees of Freedom*, often abbreviated as *DoF*.

Degrees of freedom describes the number of independent movements a robotic system can perform. Every joint that allows a separate movement adds one degree of freedom to the robot. Think of it this way: if a joint can only rotate, that is one DoF. If another joint can also rotate (but about a different axis), that adds a second DoF, and so on.

Your own body is a powerful example. The shoulder joint allows rotation in multiple directions — that alone contributes several degrees of freedom. The elbow adds one more (bending). The wrist adds more still (rotating, bending, tilting). Each independent motion your arm can make corresponds to one degree of freedom. Taken all together, the human arm has an impressive number of DoF — which is why our hands are capable of such a staggering variety of movements.

In a robotic system, more degrees of freedom means greater flexibility and a larger workspace — the robot can reach more positions, from more angles. Fewer degrees of freedom means a simpler, cheaper, and easier-to-control system, but with more limited capability. A simple robotic arm might have three DoF; a full industrial six-axis robot arm can reach almost any position and orientation within its workspace. Advanced humanoid robots have DoF in the dozens.

#figure(
  image("assets/18_robot_dof.jpg"),
  caption: [Degrees of freedom in a robotic arm.]
)

The concept of degrees of freedom guides almost every design decision made when building a robot — how many joints to include, what types to use, and where to place them. It is the language that engineers use to describe and compare robotic systems across the entire field.
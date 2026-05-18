// file: intro.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": workshop-note

Have you ever watched a robotic arm sweep across a car factory floor — welding metal, lifting heavy parts, and painting surfaces with perfect consistency — never tiring, never losing focus? Have you seen footage of a robot arm on the International Space Station, delicately repositioning equipment in the silence of space? Or perhaps you have heard about surgical robots that help doctors make incisions so precise that patients recover in days instead of weeks?

These are not scenes from a science fiction film. They are real, and the science that makes them possible is called *Robotics*.

Robotics is a captivating branch of science and engineering dedicated to designing and building machines that can perform tasks on their own — or with very little human guidance. These machines are called *robots*. What makes a robot remarkable is its ability to *sense* the world around it, *process* that information, and then *act* in a meaningful way. A robot is not just a mechanical gadget — it is an intelligent, integrated system.

#figure(
  image("assets/01_robot_arm_semicon.jpg"),
  caption: [Robotic Arm used in Semiconductor Manufacturing Industry.]
)

Robots come in an astonishing variety of shapes and sizes. Some are as large as a room; others are smaller than your thumb. Some roll on wheels, some walk on legs, others fly through the air or swim underwater. But almost all of them share the same fundamental set of ideas at their core — ideas that you are about to explore and understand.


== Why Robotics Matters

Think about some of the most dangerous jobs in the world — cleaning sewers deep underground, fighting fires in collapsing buildings, handling radioactive materials in nuclear facilities, or disarming explosive devices. In every one of these situations, a human life is at risk. Now, imagine replacing the human with a robot. It does not feel pain. It does not get tired. It does not have a family waiting at home. It can go where humans cannot — and come back out with the job done.

This is one of the most compelling reasons why robotics matters: *it protects human lives*.

But the importance of robotics goes much further than safety. Robots help surgeons perform operations on parts of the body too delicate for the human hand. They help farmers harvest crops more efficiently, reducing food waste. They build cars, assemble electronics, and package products with a speed and accuracy no human workforce could match. In scientific research, robots handle chemicals and biological samples that would be hazardous to human researchers.

And now, with the rise of Artificial Intelligence, robots are becoming smarter — capable of learning, adapting, and making decisions in complex, unpredictable environments.

#figure(
  image("assets/02_robot_future.jpg"),
  caption: [(Futuristic Image of) Students collaborating on robotics projects.]
)

Here is the truly exciting part: *you can be part of this*. Learning robotics means learning to think like an inventor — to look at a real problem in the world and ask, "How could I build something to solve this?" You will combine science, electronics, coding, and creativity. You will develop skills that stretch far beyond any single classroom subject. Robotics is not just a field of engineering — it is a way of thinking that can change the world.


== The Robotic Arm: A Perfect Learning Machine

There are many kinds of robots to explore, so why do we focus on the *robotic arm*?

Because a robotic arm is, quite simply, one of the most complete and educational systems in all of robotics. Unlike specialised robots built for just one narrow purpose, a robotic arm combines almost every fundamental concept of robotics into a single, elegant machine. Study a robotic arm deeply and you will understand robots broadly.

A robotic arm also has the advantage of being deeply *familiar*. It works in a way that mirrors your own arm — rigid segments linked together at moving joints, with a tool at the end to interact with the world. This makes it easier to reason about: you already know intuitively how an arm should move, even before you learn the engineering behind it.

While exploring a robotic arm, you will encounter and understand mechanical movement and joints, motors and electronics, sensors and control systems, programming and automation, and the thinking that goes into precision design.

#figure(
  image("assets/03_robot_arm_ar4.webp"),
  caption: [An open-source DIY robotic arm. (#link("https://anninrobotics.com/")[AR4 by Articulated Robotics])]
)

#workshop-note[In this workshop, you will build, wire, and program a miniature four-joint robotic arm — a hands-on introduction to real robotic engineering using the same concepts found in industrial systems.]


== Where Robotic Arms Are Used

Robotic arms have been transforming industries for decades, and their applications keep expanding into new and surprising territory.

=== Classical Applications

For many years, robotic arms were the unsung heroes of industrial manufacturing. In automobile factories, they weld metal chassis with sparks flying at inhuman speed, paint car bodies with flawless consistency, and assemble components along production lines that never stop. In warehouses, they sort and package thousands of items per hour. On space missions, robotic arms mounted on shuttles and space stations have been used to move satellites, repair equipment, and assist astronauts working in the vacuum of space.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    image("assets/04_robot_painting.jpg", width: 100%),
    image("assets/05_robot_packaging.jpg", width: 100%),
  ),
  caption: [Robotic automation in automobile painting and warehouse packaging.]
)

=== Modern Applications

Today, robotic arms are entering fields that would have seemed unimaginable just a generation ago. In hospitals, surgical robotic systems guide instruments through incisions smaller than a centimetre, giving surgeons a level of precision and control that reduces patient recovery time from weeks to days. In semiconductor factories, robotic arms assemble microchips so microscopic that a single human fingerprint would destroy them. In research laboratories, they handle dangerous materials and perform repetitive experimental procedures with tireless accuracy. And in ongoing space exploration programs, robotic arms on planetary rovers conduct geological experiments and collect samples millions of kilometres from any human operator.

#figure(
  image("assets/06_robot_surgery.png", width: 100%),
  caption: [Robotic assistance in medical surgeries.]
)


== What This Module Will Teach You

This learning module takes you on a structured journey through the world of robotics. It is designed to build your understanding progressively — from the big picture down to the fine details.

You will begin by exploring the *theory* that underpins every robotic system: how robots are structured mechanically, how electrical systems power and control their movements, and how programming transforms hardware into an intelligent machine. This theoretical foundation is important because it gives you the understanding to not just build things, but to truly know *why* they work — and how to fix them when they do not.

Once the theory is solid, the module transitions into a complete, step-by-step *practical guide* where you will assemble the mechanical structure of a robotic arm, wire up its electronics, and write the programs that bring it to life.

By the end, you will be able to look at a robotic system — whether in a factory, a hospital, or a space mission — and understand the engineering principles making it work. More importantly, you will have built one yourself.

Let us begin.
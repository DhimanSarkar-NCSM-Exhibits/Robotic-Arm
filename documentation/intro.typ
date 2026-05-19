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

== World Robot Olympiad: Where Student Robotics Goes Global

Imagine standing on a stage in front of thousands of people from over ninety countries, your robot competing against the best student-built machines in the world. This is not a distant dream — it is exactly what happens every year at the *World Robot Olympiad (WRO)*.

WRO is one of the largest and most prestigious international robotics competitions for students aged 8 to 19. Founded in 2004 and now involving more than ninety countries and over 28,000 teams annually, it is the Olympics of student robotics. Teams design, build, and program autonomous robots to solve real-world-inspired engineering challenges — and the problems change every single year, keeping every season fresh and demanding genuine creativity rather than memorised solutions.

If you are going through this workshop and finding yourself genuinely excited by robots — this is where that excitement can take you.

#figure(
  image("assets/34_wro.jpg"),
  caption: [World Robot Olympiad — international student robotics competition.]
)


=== The Competition Categories

WRO organises its competitions into distinct categories, each targeting a different age group and a different style of challenge.

*RoboMission* is the most widely entered category and the most directly relevant to what you are learning here. Teams of two or three students build an autonomous robot using standard educational robotics kits and program it to complete a series of missions on a themed playing field — all within two and a half minutes, with no human control once the robot starts. The field and missions are revealed a few months before the national competition, and teams have to engineer a robot that can complete as many missions as possible to score maximum points. Every season has a different global theme: past themes have included *Connecting the World* (infrastructure and transport), *Smart Cities*, *Feeding the World* (sustainable agriculture), *Robots for a Better World* (environmental challenges), and *Earth Explorers* (scientific exploration). The missions within each theme require the robot to push, carry, sort, or deposit objects in precise locations — demanding accurate movement, reliable sensors, and robust programming.

*Future Innovators* (formerly called Open Category) challenges teams to invent their own robot-based solution to a real-world problem aligned with the year's global theme. Teams present their innovation to a judging panel in the style of a science fair — demonstrating a working prototype and explaining their design decisions, impact, and engineering choices. This category rewards original thinking and is often where the most imaginative projects appear.

*Future Engineers* is a newer and increasingly competitive category targeting older students (ages 14--19). Teams build a self-driving model car using open hardware — any microcontroller, sensor, or actuator combination they choose — and the car must autonomously navigate a randomised track, avoid obstacles, and complete parking manoeuvres. This category is explicitly designed to mirror the real-world challenge of autonomous vehicle development and is growing rapidly in prestige.

*RoboSports* involves teams programming robots to play a sport — typically robot football — autonomously. It is more dynamic and unpredictable than RoboMission, requiring robots that can respond to a moving ball and an opponent in real time.


=== The Problem Statement: How It Works

One of the things that makes WRO genuinely exciting — and genuinely hard — is that the specific challenge is secret until a set release date, typically a few months before the national qualifiers. When the problem statement is published, every team in every country receives exactly the same document on the same day. From that moment, the engineering race begins.

The problem statement for RoboMission describes the playing field layout (a mat approximately 2.3 metres × 1.2 metres printed with the season's theme), all the game objects (coloured blocks, balls, figures), and a numbered list of missions each worth a specific number of points. Harder missions are worth more points. Teams study the missions, decide which ones they can reliably complete within the time limit, and then design their robot and program around that strategy.

This means WRO is not just a robotics competition — it is also a strategic engineering challenge. Should you attempt every mission partially, or master four missions completely? Should you use a colour sensor for reliability or risk faster movement without sensing? These decisions are as important as the code itself.

The field mat, game objects, and full scoring rules are all published officially on the WRO website at #link("https://wro-association.org")[_wro-association.org_] each season. Studying past problem statements is one of the best ways to prepare.


=== Competing in India

In India, WRO is organised under the banner of *WRO India*, which coordinates national-level participation and sends qualifying teams to the international final.

The competition pathway in India follows three stages. First, *regional or state-level competitions* are held across the country, organised by WRO India's regional partners — these vary by state and city. Participating schools or individuals register through WRO India's official portal, assemble a team of two or three students, and compete at the regional level. Top-performing teams from regional rounds advance to the *WRO India National Championship*, which is typically held mid-year (often between July and September) and brings together the strongest teams from across the country. The top teams from the National Championship earn the right to represent India at the *WRO International Final*, which is held in a different country each November.

Registration in India opens early in the calendar year, usually around January or February. Students and schools should monitor the official WRO India website and social media channels for registration announcements, as deadlines and formats can change annually. The registration link and current season information are available at #link("https://wroindia.org")[_wroindia.org_].

Allowed robotics platforms for RoboMission include LEGO Education SPIKE Prime, LEGO Mindstorms EV3, and other approved educational robotics kits. Teams are responsible for bringing their own equipment to competitions. Building and programming skills developed in workshops like this one — understanding servo motors, sensors, controllers, and systematic thinking — form exactly the foundation needed to succeed with these platforms.

India has been producing increasingly competitive WRO teams in recent years, with Indian students reaching the international final in multiple categories and earning recognition in RoboMission and Future Innovators.


=== The International Final

The WRO International Final is held in a different host country each November, rotating across continents. Recent international finals have been held in:

- *2024* — Izmir, Turkey — Theme: *Robots for a Better World*
- *2023* — Panama City, Panama — Theme: *Connecting the World*
- *2022* — Dortmund, Germany — Theme: *Robots for a Better World*
- *2021* — Online (virtual format due to the global pandemic)
- *2019* — Gyor, Hungary — Theme: *Smart Cities*

At the international final, teams from over ninety countries compete across two or three days of rounds. Each RoboMission team gets multiple attempts on the official field, with the best scoring run counting. Judges evaluate not just scores but also engineering journals that teams submit documenting their design process. Awards are given for gold, silver, and bronze in each age group and category, along with special prizes for creativity, engineering excellence, and sportsmanship.

The scale of the event is something to behold — thousands of students, hundreds of fields running simultaneously, and an atmosphere unlike any school competition. Many WRO alumni describe it as one of the most formative experiences of their student years.


=== What Winning Teams Do Differently

Studying the approaches of successful WRO teams reveals consistent patterns that go well beyond simply having a fast robot.

Winning teams invest heavily in *reliability over speed* — a robot that completes four missions every single run will outscore a robot that sometimes completes six but frequently fails. Consistency comes from rigorous testing across many runs, on a field built to official specifications, under varying lighting conditions.

They develop a deep understanding of *colour and light sensing* — most WRO missions involve following lines or identifying coloured objects, and sensor calibration for different ambient lighting conditions is a critical and often overlooked skill.

They maintain detailed *engineering journals* throughout their season — documenting design decisions, failed approaches, and iterations. This habit not only earns judging points but builds the reflective engineering practice that distinguishes great problem-solvers from lucky ones.

And they treat the problem statement as a *design brief*, not a fixed task. The most creative teams often find mission strategies that other teams overlook entirely — completing missions in an unexpected order, building a mechanism that handles two missions with one action, or identifying a mission that looks hard but is actually reliable with the right mechanism.


=== How to Start

You do not need to wait for an official competition to begin. Build your understanding now. Study past WRO problem statements — all are publicly archived on the WRO website. Watch video recordings of past international finals, which are freely available online and show the full range of robot designs and strategies from the world's best student teams. Join or form a robotics club at your school. Find a teacher or mentor willing to guide a team.

The skills you are developing right now — understanding how robots move, how electronics work, how to think systematically about a problem and program a solution — are precisely the skills WRO rewards. The competition is open to you. The question is simply whether you will take it.

#workshop-note[Several past WRO India participants have begun their journey at workshops like this one. If you are interested in competing, speak to your instructor about forming a team and starting your preparation for the next season.]

== What This Module Will Teach You

This learning module takes you on a structured journey through the world of robotics. It is designed to build your understanding progressively — from the big picture down to the fine details.

You will begin by exploring the *theory* that underpins every robotic system: how robots are structured mechanically, how electrical systems power and control their movements, and how programming transforms hardware into an intelligent machine. This theoretical foundation is important because it gives you the understanding to not just build things, but to truly know *why* they work — and how to fix them when they do not.

Once the theory is solid, the module transitions into a complete, step-by-step *practical guide* where you will assemble the mechanical structure of a robotic arm, wire up its electronics, and write the programs that bring it to life.

By the end, you will be able to look at a robotic system — whether in a factory, a hospital, or a space mission — and understand the engineering principles making it work. More importantly, you will have built one yourself.

Let us begin.
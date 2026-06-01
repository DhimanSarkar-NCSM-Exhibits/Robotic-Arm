// file: schedule.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#heading(
  numbering: none,
  outlined: false,
)[Workshop Schedule]

#v(0.6em)

This five-day workshop is designed to take you from your very first encounter with robotics all the way to building, programming, and competing with a real robotic arm. Each day builds on the one before it — theory first, then hands-on practice, then integration, then competition. Come prepared, stay curious, and make the most of every session.

#v(1.4em)

#block(
  width: 100%,
  inset: (x: 0pt, y: 0pt),
)[
  #let day(number, title, description) = block(
    width: 100%,
    inset: (x: 0pt, y: 0pt),
    below: 1.6em,
  )[
    #grid(
      columns: (4.2em, 1fr),
      gutter: 1.2em,
      align(top)[
        #block(
          fill: luma(30),
          radius: 4pt,
          inset: (x: 0.7em, y: 0.55em),
        )[
          #text(
            fill: white,
            size: 11pt,
            weight: "bold",
          )[Day #number]
        ]
      ],
      align(top)[
        #text(size: 12pt, weight: "bold")[#title]
        #v(0.3em)
        #text(size: 10.5pt, fill: luma(50))[#description]
      ],
    )
    #v(0.4em)
    #line(length: 100%, stroke: 0.4pt + luma(210))
  ]

  #day(
    "1",
    "Introduction to Robotics",
    "An exciting first look at the world of robotics — covering the history of robots, their anatomy and core components, real-world applications across industry, medicine, and space, and live demonstrations of robotic systems in action. By the end of the day you will understand what a robot is, how it is built, and why it matters.",
  )

  #day(
    "2",
    "Mechanical Design and Assembly",
    "A deep dive into the mechanical side of robotics — links, joints, degrees of freedom, gears, and fasteners. You will then apply this knowledge directly by assembling the mechanical structure of the robotic arm using 3D-printed parts and servo motors, step by step.",
  )

  #day(
    "3",
    "Electronics Integration and Testing",
    "The arm comes to life electrically. You will wire up the Arduino Nano, PCA9685 servo driver, and all four servo motors, connect the external power supply, and run diagnostic tests to verify every joint is responding correctly. Debugging and systematic fault-finding are key skills practised on this day.",
  )

  #day(
    "4",
    "Programming and System Integration",
    "With hardware fully assembled and tested, you will write and upload C/C++ programs using the Arduino framework — controlling servo positions through PWM, handling serial communication, and running the complete robot controller that brings all four joints under unified software control.",
  )

  #day(
    "5",
    [Competition Day — _Moving Blocks_],
    "The final day is yours to prove what you have built and learned. Teams go head to head in the Moving Blocks competition — a timed challenge where each robotic arm must move as many blocks as possible from one zone to another with precision and speed. Preliminary rounds lead to final rounds, and the best arm on the day takes the title.",
  )
]

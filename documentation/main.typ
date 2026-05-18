// file: main.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": *
#show: setup-page

= Welcome to the World of Robotics
#include "intro.typ"

= Fundamentals of Robotics
#include "robotics.typ"

= Mechanical Systems in Robotics
#include "mechanical.typ"

= Electrical and Control Systems
#include "electrical.typ"

= Hands-On Guide: Building Your Robotic Arm
#include "practical.typ"

#bibliography("references.bib")

#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)
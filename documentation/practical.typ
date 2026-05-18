// file: practical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

You have now built a solid theoretical foundation: you understand what robots are, how they are classified, how their mechanical structures create motion, and how their electrical and control systems bring them to life. Now it is time to put that knowledge to work.

In this hands-on guide, you will go through the complete process of building a working robotic arm — step by step. You will assemble the mechanical structure, wire up the electronics, write a program, and then watch the arm move under your control. Every step in this guide connects directly to a concept you have already studied. When you tighten a screw, you are thinking about fasteners. When you plug in a servo, you are thinking about actuators and PWM. When you upload your program, you are giving your robot its instructions.

Take your time, work carefully, and remember: every professional robot engineer started by building something small.


== Safety Guidelines

Before you pick up any components, take a moment to go through these safety guidelines. Following them will protect both you and your equipment.

- *Never connect or disconnect wires while the power supply is switched on.* Always power down first, make your changes, check your connections, and then power back on.
- *Do not overtighten screws on 3D-printed parts.* The plastic threads can strip easily. Tighten until the part is firm and does not wobble, then stop.
- *Always check wire polarity before connecting power.* Reversing the positive and negative connections can damage or destroy components permanently.
- *Keep the workspace tidy.* Loose wires and stray screws are trip hazards and can accidentally short-circuit electronics.
- *If anything smells like burning, disconnect power immediately* and tell your instructor.
- *Handle the servo motors gently.* Do not force them past their mechanical limits; you will hear or feel the gears grinding — stop immediately if this happens.


== Phase 1: Mechanical Assembly

The mechanical assembly transforms a collection of 3D-printed plastic parts, servo motors, and small screws into the physical body of the robotic arm. Follow each step in order and refer to the accompanying figures throughout. Use a screwdriver appropriate for the screw head type, and remember — firm is enough; tight does not mean as hard as possible.

=== Step 1: Base Assembly

*Required Components:*
- Base Cover Box — 1 pc.
- Base Mount — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\10 Screws — 4 pcs.
- M2#sym.times\6 Screw — 1 pc.

Place the *Base Mount* on top of the *Base Cover Box* and align the four screw holes around the perimeter. These two parts form the foundation of the entire arm — the base on which all other links will pivot. Secure them together using four *M2#sym.times\10 screws*, one at each corner.

Next, insert the first *Servo Motor* into the designated motor slot in the Base Mount, with the servo shaft facing inward toward the holder. This is the base joint — the one that rotates the entire arm horizontally. Route the servo's cable through the wire channel to keep it organised. Secure the servo motor in place using one *M2#sym.times\6 screw*.

#figure(
  image("assets/assembly/base1_assembly.jpg"),
  caption: [Mechanical Assembly — Step 1: Base Structure.]
) <mech_assembly_1>

=== Step 2: Mounting the First Link

*Required Components:*
- Link 1 — 1 pc.
- Servo Arm Full — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.

Place the *Servo Arm Full* into its dedicated groove inside *Link 1*. The servo arm connects the rotating shaft of the base motor to the first link — it is what transmits the motor's rotation into the link's movement. Position *Link 1* onto the base structure so that the servo arm aligns correctly with the shaft of the base servo motor. Secure *Link 1* to the servo shaft using one *M2#sym.times\6 screw*.

Next, insert the second *Servo Motor* into the motor slot on *Link 1* — this motor will drive *Link 2* in the next step. Secure it using two *M2#sym.times\6 screws*.

#figure(
  image("assets/assembly/mount1_assembly.jpg"),
  caption: [Mechanical Assembly — Step 2: First Link.]
) <mech_assembly_2>

=== Step 3: Mounting the Second Link

*Required Components:*
- Link 2 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.

Place the *Servo Arm Half* into the groove inside *Link 2*. Align *Link 2* with the shaft of the servo motor mounted on *Link 1* and secure the link using one *M2#sym.times\6 screw*. Insert the third *Servo Motor* into the motor slot on *Link 2* and fix it in place using two *M2#sym.times\6 screws*.

#figure(
  image("assets/assembly/link2_assembly.jpg"),
  caption: [Mechanical Assembly — Step 3: Second Link.]
) <mech_assembly_3>

=== Step 4: Mounting the Third Link

*Required Components:*
- Link 3 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 3 pcs.

Place the *Servo Arm Half* into the groove in *Link 3*. Align *Link 3* with the shaft of the servo motor mounted on *Link 2* and secure it using one *M2#sym.times\6 screw*. Mount the fourth *Servo Motor* into the motor slot on *Link 3* and secure it using two *M2#sym.times\6 screws*. This motor will drive the end-effector assembled in the next step.

#figure(
  image("assets/assembly/link3_assembly.jpg"),
  caption: [Mechanical Assembly — Step 4: Third Link.]
) <mech_assembly_4>

=== Step 5: Assembling the End-Effector

*Required Components:*
- Driver Gear — 1 pc.
- Driven Gear — 1 pc.
- Idler Compound Gear — 1 pc.
- End-Effector Claws — 2 pcs.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screw — 1 pc.
- M2#sym.times\10 Screws — 2 pcs.

This step introduces the gear mechanism you studied in the mechanical systems chapter. The driver gear, driven gear, and idler compound gear work together to convert the rotation of the servo motor into the opening and closing motion of the two claws. Assemble the gears and end-effector claws as shown in the reference figure, ensuring the gear teeth mesh cleanly without binding.

Mount the *Servo Arm Half* onto the end-effector mechanism and align it with the fourth servo motor shaft. Secure the assembly using one *M2#sym.times\6 screw*. Mount the servo motor and secure it using two *M2#sym.times\10 screws*.

#figure(
  image("assets/assembly/end_eftr_assembly.jpg"),
  caption: [Mechanical Assembly — Step 5: End-Effector with Gear Mechanism.]
) <mech_assembly_5>

=== Final Mechanical Assembly

With all five steps complete, the mechanical structure of the robotic arm is fully assembled. Check that all joints can move freely through their range of motion without binding, that all screws are firm, and that no servo cables are pinched or overly strained.

#figure(
  image("assets/assembly/whole_assemblyl.jpg"),
  caption: [Complete Mechanical Assembly of the Robotic Arm.]
) <mech_assembly_6>

Take a moment to appreciate what you have built: a four-degree-of-freedom serial manipulator with revolute joints — the same fundamental architecture used in robotic arms across industry worldwide. The base joint rotates the arm horizontally; Links 1, 2, and 3 extend and position the arm in a vertical plane; and the end-effector grips objects. All the theory from the earlier chapters is now physical.


== Phase 2: Electrical Connections

With the mechanical structure complete, it is time to add the electronics. You will connect four servo motors to the PCA9685 driver, connect the PCA9685 to the Arduino Nano, and connect an external power supply to run the motors safely.

=== Control Architecture

The control system works in two layers. The *Arduino Nano* acts as the high-level controller: it receives commands (either from a pre-programmed sequence or from a computer over USB), decides what angles each joint should move to, and sends those instructions to the *PCA9685 servo driver* over I2C. The *PCA9685* handles the low-level work: it independently generates four precise PWM signals and delivers them to the four servo motors. This separation of concerns is exactly what you studied in the electrical systems chapter.

The servo channels are assigned as follows:
- Channel 0 → Base Joint (Servo 1)
- Channel 1 → Link 1 Joint (Servo 2)
- Channel 2 → Link 2 Joint (Servo 3)
- Channel 3 → End-Effector Joint (Servo 4)

=== Connecting Servo Motors to the PCA9685

Each servo motor has a 3-wire cable terminating in a 3-pin connector. The standard colour coding is:
- *Brown or Black* → Ground (GND)
- *Red* → Power (+5 V)
- *Orange or Yellow* → PWM Signal

The PCA9685 output headers are arranged with the same three pins — GND, V+, and Signal — from left to right when viewed with the chip facing up. Match the colours carefully: brown/black to GND, red to V+, orange/yellow to Signal. Plugging a servo in backwards will not damage it, but it will not function and you may see it jitter — double-check alignment if any servo behaves unexpectedly.

#figure(
  image("assets/31_servo_pca_connection.jpg"),
  caption: [Connecting a servo motor at channel 15 of PCA9685 module.]
)

Connect the four servos to channels 0, 1, 2, and 3 respectively, following the joint assignment above.

=== Connecting the PCA9685 to the Arduino Nano

The PCA9685 communicates with the Arduino over I2C. Make the following four connections:

- *PCA9685 SDA* → *Arduino A4*
- *PCA9685 SCL* → *Arduino A5*
- *PCA9685 VCC* → *Arduino 5V*
- *PCA9685 GND* → *Arduino GND*

SDA and SCL carry the I2C data and clock signals respectively. VCC and GND power the PCA9685's own logic circuitry from the Arduino's regulated 5 V supply. The Arduino A4 and A5 pins are the hardware I2C pins on the ATmega328P — no other pins will work for I2C communication.

#figure(
  image("assets/32_nano_pca.jpg"),
  caption: [Connecting a Arduino Nano with PCA9685 module.]
)

=== Connecting the External Power Supply

Servo motors draw significantly more current than the Arduino can safely supply through its 5 V pin — especially when multiple servos are moving simultaneously. For this reason, the servo motors are powered separately using an external *5 V, 3 A DC power supply*.

Connect the positive output of the power supply to the *V+* terminal of the PCA9685, and the negative output (ground) to the *GND* terminal of the PCA9685. The GND of the power supply must also be the same ground as the Arduino and PCA9685 (they share the GND connections you made above).

*Important:* Do not connect the power supply's positive terminal to the Arduino 5 V pin. Always maintain correct polarity — reversing positive and negative will damage the PCA9685 immediately.

#figure(
  image("assets/33_pca_pwr.jpg"),
  caption: [Connecting a external power supply with PCA9685 module.]
)

=== Initial Power-Up Check

Before turning on the external power supply, verify all connections once more. Then connect the Arduino Nano to your computer using its USB cable — the Arduino will power up from USB, and the logic section of the PCA9685 will also activate through the VCC connection.

If the wiring is correct, the *red power LED on the PCA9685* will illuminate. This confirms that the Arduino is powered, the PCA9685 logic section is active, and the I2C wiring is connected. The servo motors will remain unpowered until you switch on the external 5 V supply.


== Phase 3: Programming and Testing

The hardware is assembled and connected. Now you will upload programs to the Arduino Nano and see the arm come to life.

=== installing arduino IDE and libraries
to be added...

=== Step 1: Testing All Servo Motors

Before writing a complete robot controller, always start with a simple test program that verifies each motor is functioning correctly. This catches wiring errors, mechanical binding, and software issues early, when they are easiest to fix.

The following program moves all four servo motors between two positions repeatedly. Upload it to the Arduino Nano using the Arduino IDE:

#raw(
  read("assets/arduino/robot_test_example1.ino"),
  lang: "cpp",
  block: true,
)

After uploading, switch on the external 5 V power supply and observe the arm. All four joints should move smoothly back and forth. If any servo does not respond, switch off power immediately and check its wiring connection to the PCA9685. If any joint moves in the wrong direction or binds mechanically, note which channel it is on and investigate the assembly of that joint.

A successful test confirms that the Arduino is running correctly, I2C communication to the PCA9685 is working, and all four servo motors are operational.

=== Understanding Joint Angles and PWM Values

Each servo motor position is controlled by a PWM value sent to the PCA9685. The PCA9685 uses 12-bit PWM resolution — values from 0 to 4095. The pulse width corresponding to each value depends on the PWM frequency (set to 50 Hz).

For standard hobby servo motors at 50 Hz:
- A PWM count of approximately *150* corresponds to the servo's ~0° position
- A count of approximately *375* corresponds to ~180°

The exact mapping varies slightly between servo models, so it is good practice to experimentally verify the minimum and maximum PWM counts for each servo before running complex motions. Sending a value that drives the servo beyond its mechanical stop will cause the gears to grind — reduce the value immediately if you hear this.

=== Step 2: Serial-Controlled Robot Arm

Once all servos pass the basic test, you are ready to run the full robot controller. This program listens for commands sent from a computer via the USB serial connection and moves the arm joints to the requested positions.

Commands are sent as plain text in the following format:

`ang1,ang2,ang3,ang4`

Each value is the desired angle in degrees for that joint. For example:

`45.0,90.0,120.0,60.0`

Values must be separated by commas with no spaces. All four values must be present. If the Arduino receives a message that does not match this format — missing values, extra characters, garbled data — it will ignore the command entirely and respond with `ERROR` over the serial connection. This protects the arm from unexpected or corrupted commands causing sudden, potentially damaging motion.

Upload the following program to the Arduino Nano:

#raw(
  read("assets/arduino/robot_controller_example.ino"),
  lang: "cpp",
  block: true,
)

=== How the Controller Works

When a valid command arrives via serial, the program extracts the four angle values and converts each one into the corresponding PWM count for that servo. It then sends all four updated PWM values to the PCA9685 in sequence, causing all four joints to move toward their new positions.

The conversion from angle (in degrees) to PWM count is done using a linear mapping: 0° maps to the minimum PWM count and 180° maps to the maximum, with all intermediate angles mapped proportionally in between.

The serial communication parameters are:
- *Baud Rate:* 115200
- *Format:* Plain text, comma-separated values
- *Terminator:* Newline character

You can test the controller using the Arduino IDE's Serial Monitor — type a command in the input box, press Enter, and watch the arm respond.

=== Final Notes

Congratulations — your robotic arm is fully assembled, wired, and running its controller program. You have taken the robotic arm from a set of unconnected parts to a working, computer-controlled machine.

From here, you can explore further: add more sophisticated motion sequences, build a graphical control interface on a computer that sends commands over serial, experiment with different joint angle combinations to understand the arm's workspace, or investigate what changes when you modify the gear ratio or link lengths.

The same architecture you have just built — serial manipulator, servo actuators, PWM control, microcontroller brain — is the foundation of industrial robotic arms, surgical systems, and research platforms worldwide. You now understand it from the inside out.
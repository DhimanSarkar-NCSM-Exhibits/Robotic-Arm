// file: practical.typ
// SPDX-License-Identifier: CC-BY-SA-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": workshop-note

You have now built a solid theoretical foundation: you understand what robots are, how they are classified, how their mechanical structures create motion, and how their electrical and control systems bring them to life. Now it is time to put that knowledge to work.

In this hands-on guide, you will go through the complete process of building a working robotic arm — step by step. You will assemble the mechanical structure, wire up the electronics, write the programs that bring it to life, and finally control it from a computer or a smartphone. Every step connects directly to something you have already studied. When you tighten a screw, you are thinking about fasteners. When you plug in a servo, you are thinking about actuators and PWM. When you upload a program, you are giving your robot its instructions.

Take your time, work carefully, and remember: every professional robot engineer started by building something small.


== Safety Guidelines

Before you pick up any components, read through these guidelines carefully. Following them will protect both you and your equipment throughout the session.

- *Never connect or disconnect wires while the power supply is switched on.* Always power down first, make your changes, check your connections, and then power back on.
- *Do not overtighten screws on 3D-printed parts.* Plastic threads strip easily. Tighten until the part is firm and does not wobble, then stop.
- *Always check wire polarity before connecting power.* Reversing positive and negative connections can damage or destroy components permanently.
- *Keep your workspace tidy.* Loose wires and stray screws can accidentally short-circuit electronics or cause trips and falls.
- *If anything smells like burning, disconnect power immediately* and inform your instructor.
- *Handle servo motors gently.* Do not force them past their mechanical limits — if you hear or feel the gears grinding, stop immediately and reduce the commanded angle.


== Phase 1: Mechanical Assembly

The mechanical assembly transforms a collection of 3D-printed plastic parts, servo motors, and small screws into the physical body of the robotic arm. Follow each step in order and refer to the accompanying figures. Use a screwdriver that fits the screw head correctly — firm tightening is enough, do not use excessive force.

=== Step 1: Base Assembly

*Required Components:*
- Base Cover Box — 1 pc.
- Base Mount — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\10 Screws — 4 pcs.
- M2#sym.times\6 Screw — 1 pc.

Place the *Base Mount* on top of the *Base Cover Box* and align the four screw holes around the perimeter. These two parts form the foundation of the entire arm — the fixed base on which all other links will pivot. Secure them together using four *M2#sym.times\10 screws*, one at each corner.

Insert the first *Servo Motor* into the designated slot in the Base Mount, with the servo shaft facing inward toward the holder. This is the base joint — the one that rotates the entire arm horizontally. Route the servo cable through the wire channel to keep it organised. Secure the motor in place using one *M2#sym.times\6 screw*.

See @mech_assembly_1 for the complete assembly of the base structure.

#figure(
  image("assets/assembly/base1_assembly.jpg"),
  caption: [Mechanical Assembly — Step 1: Base Structure.]
) <mech_assembly_1>


=== Step 2: Mounting the First Link

*Required Components:*
- Link 1 — 1 pc.
- Servo Arm Full — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 2 pcs.
- M2#sym.times\3 Screws — 1 pcs.

Place the *Servo Arm Full* into its dedicated groove inside *Link 1*. The servo arm is the mechanical bridge between the rotating shaft of the base motor and the first link — it is what transmits the motor's rotation into the link's movement. Position *Link 1* onto the base structure so that the servo arm aligns correctly with the shaft of the base servo motor. Secure *Link 1* to the servo shaft using one *M2#sym.times\3 screw*.

Insert the second *Servo Motor* into the motor slot on *Link 1* — this motor will drive *Link 2* in the next step. Secure it using two *M2#sym.times\6 screws*.

See @mech_assembly_2 for the complete assembly of the first link.

#figure(
  image("assets/assembly/mount1_assembly.jpg"),
  caption: [Mechanical Assembly — Step 2: First Link.]
) <mech_assembly_2>


=== Step 3: Mounting the Second Link

*Required Components:*
- Link 2 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 2 pcs.
- M2#sym.times\3 Screw — 1 pc.

Place the *Servo Arm Half* into the groove inside *Link 2*. Align *Link 2* with the shaft of the servo motor mounted on *Link 1* and secure the link using one *M2#sym.times\3 screw*. Insert the third *Servo Motor* into the motor slot on *Link 2* and fix it in place using two *M2#sym.times\6 screws*.

See @mech_assembly_3 for the complete assembly of the second link.

#figure(
  image("assets/assembly/link2_assembly.jpg"),
  caption: [Mechanical Assembly — Step 3: Second Link.]
) <mech_assembly_3>


=== Step 4: Mounting the Third Link

*Required Components:*
- Link 3 — 1 pc.
- Servo Arm Half — 1 pc.
- Servo Motor — 1 pc.
- M2#sym.times\6 Screws — 2 pcs.
- M2#sym.times\3 Screw — 1 pc.

Place the *Servo Arm Half* into the groove in *Link 3*. Align *Link 3* with the shaft of the servo motor on *Link 2* and secure it using one *M2#sym.times\3 screw*. Mount the fourth *Servo Motor* into the motor slot on *Link 3*. Place the *End Effector Base* on top of servo motor. Secure the servo motor and the end-effector base altogether using two *M2#sym.times\10 screws*. This motor will drive the end-effector assembled in the next step.

See @mech_assembly_4 for the complete assembly of the third link.

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

This step brings the gear mechanism you studied in the mechanical systems chapter to life. The driver gear, driven gear, and idler compound gear work together to convert the rotation of the servo motor into the opening and closing motion of the two claws. Assemble the gears and end-effector claws as shown in the reference figure, ensuring the gear teeth mesh cleanly without binding or catching.

Mount the *Servo Arm Half* on to the driver gear and then attach this with the servo motor in the Link 3 and secure it with one *M2#sym.times\3 screw*. Now attache the *Idler Gear* with the right claw using the dedicated grooves and secure it with one *M2#sym.times\10 screw*. Finally, place the left claw on the left side of the idler gear and secure it with one *M2#sym.times\10 screw*.

See @mech_assembly_5 for the complete assembly of the end-effector.

#figure(
  image("assets/assembly/end_eftr_assembly.jpg"),
  caption: [Mechanical Assembly — Step 5: End-Effector with Gear Mechanism.]
) <mech_assembly_5>


=== Final Check: Mechanical Assembly

With all five steps complete, the mechanical structure of the robotic arm is fully assembled. Before moving on, run through this checklist:

- All joints move freely through their range of motion without binding or catching.
- All screws are firm and no parts wobble.
- No servo cables are pinched, kinked, or pulled tight against any moving part.
- The gear teeth in the end-effector mesh cleanly and the claws open and close smoothly by hand.

#figure(
  image("assets/assembly/whole_assemblyl.jpg"),
  caption: [Complete Mechanical Assembly of the Robotic Arm.]
) <mech_assembly_6>

Take a moment to appreciate what you have just built: a four-degree-of-freedom serial manipulator with revolute joints — the same fundamental architecture used in robotic arms across industry worldwide. The base joint rotates the arm horizontally; Links 1, 2, and 3 extend and position the arm in a vertical plane; and the end-effector grips objects. Every concept from the theory chapters is now physical, right in front of you.


== Phase 2: Electrical Connections

With the mechanical structure complete, it is time to bring the electronics together. You will connect four servo motors to the PCA9685 driver, connect the PCA9685 to the Arduino Nano over I2C, and connect an external power supply to run the motors safely. Work methodically and double-check every connection before applying power.

=== Understanding the Control Architecture

The control system works in two layers. The *Arduino Nano* is the high-level controller: it receives commands, decides what angle each joint should move to, and passes those instructions to the *PCA9685 servo driver* over I2C. The *PCA9685* handles the low-level work: it independently generates four precise PWM signals and delivers them continuously to the four servo motors. This clean separation — the Nano thinks, the PCA9685 signals, the servos move — is exactly the architecture you studied in the electrical systems chapter.

The four servo channels are assigned as follows:
- Channel 0 → Base Joint
- Channel 1 → Link 1 Joint
- Channel 2 → Link 2 Joint
- Channel 3 → End-Effector Joint

Keep this channel assignment in mind throughout wiring and programming. It is the map between software and hardware.

=== Connecting Servo Motors to the PCA9685

Each servo motor has a 3-wire cable terminating in a 3-pin connector. The standard colour coding is:
- *Brown or Black* → Ground (GND)
- *Red* → Power (+5 V)
- *Orange or Yellow* → PWM Signal

The PCA9685 output headers present the same three connections — GND, V+, and Signal — from left to right when the chip faces up. Match colours carefully: brown or black to GND, red to V+, orange or yellow to Signal.

#figure(
  image("assets/31_servo_pca_connection.jpg"),
  caption: [Connecting a servo motor to a channel of the PCA9685 module.]
)

Connect the four servos to channels 0, 1, 2, and 3 in order, following the joint assignment above. If any servo jitters or fails to respond after power-up, switch off immediately and recheck the connector orientation on that channel.

=== Connecting the PCA9685 to the Arduino Nano

The PCA9685 communicates with the Arduino over I2C using just two signal wires plus power and ground. Make the following four connections:

- *PCA9685 SDA* → *Arduino A4*
- *PCA9685 SCL* → *Arduino A5*
- *PCA9685 VCC* → *Arduino 5V*
- *PCA9685 GND* → *Arduino GND*

SDA and SCL are the I2C data and clock lines. VCC and GND supply the PCA9685's logic circuitry from the Arduino's regulated 5 V rail. The A4 and A5 pins are the dedicated hardware I2C pins on the ATmega328P — no other pins on the Nano will work for this purpose.

#figure(
  image("assets/32_nano_pca.jpg"),
  caption: [Arduino Nano connected to the PCA9685 module over I2C.]
)

=== Connecting the External Power Supply

Servo motors draw far more current than the Arduino can safely supply — especially when several joints move at the same time. The servo motors must therefore be powered by a separate *5 V, 3 A DC power supply*, connected directly to the PCA9685's power terminals.

Connect the *positive* output of the power supply to the *V+* terminal of the PCA9685, and the *negative* output to the *GND* terminal. This GND is shared with the Arduino GND through the connections made above, which is essential for the signals to work correctly.

*Do not* connect the power supply's positive terminal to the Arduino 5 V pin. Always verify polarity before switching on — reversing positive and negative will damage the PCA9685 immediately and permanently.

#figure(
  image("assets/33_pca_pwr.jpg"),
  caption: [External 5 V power supply connected to the V+ and GND terminals of the PCA9685.]
)

=== Initial Power-Up Check

With all connections made, verify everything once more visually before applying power. Then connect the Arduino Nano to your computer using its USB cable. The Arduino powers up from USB, and the logic section of the PCA9685 activates through the VCC line.

If wiring is correct, the *red power LED on the PCA9685* will illuminate. This confirms the Arduino is powered, the PCA9685 logic section is active, and the I2C wiring is intact. The servo motors remain unpowered and stationary until you switch on the external 5 V supply — which you should leave off until a program is uploaded and ready.


== Phase 3: Programming and Testing

The hardware is assembled and wired. Now you will set up your programming environment, upload programs to the Arduino Nano, and bring the arm to life.

=== Setting Up the Arduino IDE

Before uploading any programs, make sure the Arduino IDE is installed and configured correctly on your device.

*Step 1 — Download and Install the Arduino IDE*

The Arduino IDE 2 is free and available for all platforms. Open a browser, go to #link("https://www.arduino.cc/en/software")[_arduino.cc/en/software_], and download for your platform:

*Windows* — download the `.exe` installer. Run it and accept the USB driver installation prompt — this driver is what allows Windows to recognise the Arduino Nano over USB.

*macOS* — download the `.dmg` disk image. Open it and drag the Arduino IDE into your Applications folder.

*Linux* — download the `.AppImage` file. Mark it as executable with `chmod +x` in a terminal and run it directly. No installation step is needed.

*Android* — open the Google Play Store, search for *Arduino IDE* by *Arduino SA*, and tap Install. Android 8.0 or higher is required, along with a USB OTG adapter to connect the Nano to your device.

Once installed, launch the IDE. On first launch it may take a moment to initialise — this is normal.

#figure(
  image("assets/ide/ide_1.png", width: 95%),
  caption: [Arduino IDE main interface after first launch on desktop.]
)

// #figure(
//   image("assets/setup/android_arduino_ide_home.jpg"),
//   caption: [Arduino IDE app home screen on Android.]
// )

*Step 2 — Connect the Arduino Nano and Select the Board*

+ Connect the *Arduino Nano* to your device via USB. On Android, use a *USB OTG adapter* between your phone and the Nano's cable.
+ Open the board selector — *Tools → Board* on desktop, or the board dropdown at the top of the screen on Android.
+ Select *Arduino AVR Boards → Arduino Nano*.
+ Set the *Processor* to *ATmega328P*. If your Nano uses the CH340 USB chip (common on clone boards), select *ATmega328P (Old Bootloader)* instead.
+ Select the correct port:
  - *Windows:* a COM port such as `COM3`, visible under *Tools → Port*
  - *macOS:* something like `/dev/cu.usbserial-XXXX`, visible under *Tools → Port*
  - *Linux:* typically `/dev/ttyUSB0` or `/dev/ttyACM0`, visible under *Tools → Port*
  - *Android:* the IDE detects the board automatically via OTG

If you are unsure which port is the Arduino on desktop, unplug the USB cable, note what is listed, plug it back in — the new entry is your board.

On Linux, if uploading fails with a permissions error, run the following in a terminal and log out and back in:

#raw("sudo usermod -a -G dialout $USER", lang: "bash", block: false)

On Windows, if the Nano does not appear under any COM port, the CH340 driver is missing. Search online for *CH340 driver* and install it from the manufacturer's site.

#figure(
  image("assets/ide/ide_2.png"),
  caption: [Selecting Arduino Nano and processor in the Tools menu on Linux.]
)

// #figure(
//   image("assets/setup/arduino_board_select.jpg"),
//   caption: [Selecting Arduino Nano and processor in the Tools menu on desktop.]
// )

// #figure(
//   image("assets/setup/arduino_port_select.jpg"),
//   caption: [Selecting the correct serial port under Tools → Port on desktop.]
// )

// #figure(
//   image("assets/setup/android_arduino_ide_board_select.jpg"),
//   caption: [Board selection on the Arduino IDE for Android.]
// )

*Step 3 — Update Built-In Libraries*

Open the Library Manager (*Tools → Manage Libraries* on desktop; hamburger menu → *Library Manager* on Android). Search for *Wire* and click or tap *Update* if available. Do the same for *Servo*. These libraries ship with the IDE but keeping them current ensures the best compatibility.

// #figure(
//   image("assets/setup/library_manager_desktop.jpg"),
//   caption: [Library Manager showing available updates on desktop.]
// )

*Step 4 — Install the Required Libraries*

This project needs one library that does not come with the IDE:

*Adafruit PWM Servo Driver Library* (by Adafruit) — communicates with the PCA9685 servo driver over I2C. Its dependency, *Adafruit BusIO*, is installed automatically alongside it.

To install on any platform:

+ Open the Library Manager.
+ Search for *Adafruit PWM Servo Driver*.
+ Confirm the author is *Adafruit*, then click or tap *Install*.
+ When asked about missing dependencies, always choose *Install All*.

#figure(
  image("assets/ide/ide_3.png"),
  caption: [Searching for the Adafruit PWM Servo Driver Library.]
)

#figure(
  image("assets/ide/ide_4.png"),
  caption: [Choosing Install All to include all dependencies.]
)

// #figure(
//   image("assets/setup/android_library_install_all.jpg"),
//   caption: [Installing the library on the Android IDE.]
// )

Installing any other library in the future follows the exact same process. To update existing libraries, open the Library Manager at any time, find entries with an *Update* button, and click or tap it.

*Step 5 — Verify with a Blank Upload*

Open a new blank sketch (*File → New Sketch* on desktop; tap *+* on Android), leave it empty, and click or tap *Upload*. The status bar should read *Done uploading* with no errors. This confirms the board, port, and driver are all correctly configured before you start writing robot code.

#figure(
  image("assets/ide/ide_6.png"),
  caption: [Done uploading confirmation in the Arduino IDE.]
)

If the upload fails, check: correct board and processor selected? Correct port selected? CH340 driver installed (Windows)? Added to `dialout` group (Linux)? USB permission granted (Android)?


=== Serial Monitor Tools

Once a program is running on the Arduino, a *serial monitor* is how you communicate with it — sending commands and reading responses over the USB connection. The Arduino IDE has a built-in Serial Monitor (the magnifying glass icon, top-right) that is perfectly capable for this project. Set the baud rate to *115200* to match the robot controller program, type a command in the input box, and press Enter to send.

If you prefer a standalone tool with more features such as data logging or live plotting, many excellent options exist. On *Windows*, QtSerialMonitor and PuTTY are popular choices. On *Linux*, Serial Studio and Minicom are widely used. On *macOS*, CoolTerm and the built-in `screen` command work well. On *Android*, Serial USB Terminal by Kai Morich connects over USB OTG. Every tool works the same way at its core — select the port, set the baud rate to 115200, and start communicating. You are encouraged to explore whichever tool suits your workflow best.

// #figure(
//   image("assets/setup/serial_monitor_arduino_ide.jpg"),
//   caption: [Built-in Serial Monitor in the Arduino IDE with baud rate set to 115200.]
// )


=== Testing All Servo Motors

Before running the full robot controller, always start with a simple test that verifies every motor is working correctly. This catches wiring errors, mechanical binding, and software issues early — when they are easiest to fix.

The following program moves all four servo motors between two positions repeatedly. Upload it to the Arduino Nano:

#raw(
  read("assets/arduino/robot_test_example1.ino"),
  lang: "cpp",
  block: true,
)

After uploading, switch on the external 5 V power supply and observe the arm. All four joints should move smoothly back and forth. If any servo does not respond, switch off power immediately and recheck its wiring to the PCA9685 channel. If a joint moves in the wrong direction or binds, note the channel number and investigate the assembly of that joint.

A successful test confirms that the Arduino is running, I2C communication to the PCA9685 is working, and all four servo motors are operational. You are ready to move on.


=== Understanding Joint Angles and PWM Values

Each servo motor position is controlled by a PWM count value sent to the PCA9685. The PCA9685 uses 12-bit resolution — values from 0 to 4095 — and the pulse width each count produces depends on the PWM frequency, which is set to 50 Hz.

For standard hobby servo motors at 50 Hz:
- A PWM count of approximately *102* corresponds to ~0°
- A PWM count of approximately *512* corresponds to ~180°

The exact mapping varies slightly between servo models. It is good practice to verify the minimum and maximum PWM counts for each servo experimentally before running complex movements. If a servo grinds — its gears are being driven past the mechanical stop — reduce the PWM value immediately.


=== The Robot API: Controlling the Arm Through Serial

At this point it is worth introducing an important concept that will change how you think about the robotic arm as a system.

An *API* — short for *Application Programming Interface* — is a defined, agreed-upon way for two systems to communicate and exchange information. You encounter APIs constantly in the technology world: a weather app on your phone uses an API to request data from a weather server; a payment system uses an API to communicate with a bank. The key idea is that an API *hides the complexity underneath* and exposes only a clean, simple interface. You do not need to know how the bank's internal servers work to make a payment — you just use the API.

Your robotic arm has an API too. It is the *serial data format* the Arduino controller listens for:

`ang1,ang2,ang3,ang4`

This is a simple but complete hardware API. Any device or program that can send text over a serial connection — a computer, a smartphone, a Raspberry Pi, another microcontroller, or a custom application — can control the robotic arm fully by speaking this format. The sender does not need to know anything about PWM signals, the PCA9685 driver, servo wiring, or the ATmega328P microcontroller. All of that complexity is hidden behind the Arduino controller. The API is the clean surface that everything else talks to.

This is exactly how real industrial robots work. A robot arm in a factory does not expose its individual motor controllers to the factory management software. Instead, it exposes a defined command interface — an API — and the software above simply sends movement instructions. The robot handles everything underneath.

The communication parameters for this arm's API are:
- *Interface:* Serial over USB (UART)
- *Baud Rate:* 115200
- *Command format:* `ang1,ang2,ang3,ang4` — four comma-separated decimal values in degrees, no spaces
- *Success response:* none (the arm moves silently)
- *Error response:* `ERROR` — sent back when a malformed or incomplete command is received

Example valid command: `45.0,90.0,120.0,60.0`

#workshop-note[This serial API is the communication layer the workshop's Python web controller uses to drive the arm. Any program or device you write in the future can control this arm using the same simple format — without touching the Arduino code at all.]


=== Running the Robot Controller Program

Upload the following program to the Arduino Nano. This is the main controller — it listens continuously for incoming serial commands in the API format described above and moves the arm joints accordingly:

#raw(
  read("assets/arduino/robot_controller_example.ino"),
  lang: "cpp",
  block: true,
)

When a valid command arrives, the program extracts the four angle values, converts each into the corresponding PWM count using a linear mapping (0° → minimum count, 180° → maximum count), and sends all four updated values to the PCA9685, causing the joints to move to their new positions simultaneously.

If an incomplete or incorrectly formatted command arrives, the controller ignores it entirely and responds with `ERROR` — protecting the arm from unexpected motion caused by corrupted data.

You can test the controller immediately using the Serial Monitor in the Arduino IDE. With the 5 V supply on and the program running, type a command such as `45.0,90.0,60.0,30.0` into the Serial Monitor input box and press Enter. The arm should respond and move its joints to those angles.


=== Controlling the Arm from a Web Interface

Alongside this document, a *Python controller script* is supplied that provides a browser-based graphical interface for controlling the robotic arm. Instead of typing raw serial commands into a terminal, you interact with a visual control panel in any web browser — sliders, buttons, and real-time joint angle readouts — while the Python script translates your inputs into the same serial API commands the Arduino expects.

This is a direct demonstration of what the API makes possible. The Python script does not know or care about servo motors, PWM signals, or the PCA9685. It only speaks the API — four comma-separated angles over serial — and the Arduino handles everything from there. The same Python script would work equally well if you rebuilt the arm with completely different motors and a different driver board, as long as the Arduino firmware behind the API remained the same.

To run the Python controller:

+ Ensure *Python 3* is installed on your computer. Download it from #link("https://www.python.org")[_python.org_] if needed.
+ Install the required Python libraries by running the following in a terminal or command prompt:

#raw("pip install pyserial flask", lang: "bash", block: false)

+ Connect the Arduino Nano (running the controller program from the previous step) to your computer via USB and switch on the 5 V power supply.
+ Open a terminal, navigate to the folder containing the supplied Python script, and run:

#raw("python robot_controller.py", lang: "bash", block: false)

+ The script will print a local web address — typically `http://127.0.0.1:5000` or `http://localhost:5000` — to the terminal. Open this address in any web browser on the same computer.
+ The control interface will load. Use the sliders to set the desired angle for each joint and click the Send or Move button. The Python script formats your input as a serial API command and sends it to the Arduino, which moves the arm.

// #figure(
//   image("assets/setup/python_web_controller_ui.jpg"),
//   caption: [Browser-based robotic arm control interface served by the Python controller script.]
// )

// #figure(
//   image("assets/setup/python_web_controller_terminal.jpg"),
//   caption: [Python controller script running in a terminal, showing the local web address and incoming commands.]
// )

If the script cannot find the Arduino's serial port, open the Python file in a text editor and update the port name at the top of the file to match the COM port (Windows) or `/dev/` path (Linux/macOS) that the Arduino Nano is connected to.


=== Wireless Control from Android

If you would like to control the arm without a USB cable, you can add a *Bluetooth serial module* — such as the widely available HC-05 or HC-06 — to the Arduino Nano. These modules appear to the Arduino as a standard UART serial connection, so the robot controller program requires no changes whatsoever. The arm simply receives the same serial API commands wirelessly.

*Wiring the HC-05 or HC-06 to the Arduino Nano:*
- HC-05/06 *VCC* → Arduino *5V*
- HC-05/06 *GND* → Arduino *GND*
- HC-05/06 *TXD* → Arduino *RX (Pin 0)*
- HC-05/06 *RXD* → Arduino *TX (Pin 1)*

*Important:* disconnect the Bluetooth module's TX and RX wires whenever uploading a new sketch, as the serial port is shared and the module will interfere with the upload.

To pair and connect from Android, install *Serial Bluetooth Terminal* by Kai Morich from the Google Play Store. Power on the Arduino with the module connected — the module's LED will blink rapidly. On your Android device, open *Settings → Bluetooth*, scan for devices, and tap the HC-05 or HC-06 entry. Enter the pairing PIN: *1234* for HC-06, or *0000* for HC-05. Once paired, open Serial Bluetooth Terminal, tap the connect icon, select your module, and set the baud rate to *115200*. Send commands in the same API format — `45.0,90.0,120.0,60.0` — and the arm will respond exactly as it does over USB.

// #figure(
//   image("assets/setup/android_serial_bt_terminal.jpg"),
//   caption: [Serial Bluetooth Terminal connected wirelessly to the Arduino via HC-05.]
// )


== Final Notes

Congratulations — your robotic arm is fully assembled, wired, programmed, and under your control.

You have gone from a collection of parts to a working, computer-controlled robotic system. Along the way you have practised mechanical assembly, electronics wiring, embedded programming, serial communication, and the concept of a hardware API. Each of those skills appears in real-world robotics and engineering at every level of complexity.

From here, you can go in many directions. Experiment with different joint angle combinations to explore the arm's workspace and understand its limits. Modify the Python web controller to add new features or a different interface. Write your own program — in any language — that speaks the serial API and drives the arm in a pattern of your design. Add sensors to the Arduino and feed their readings back through the serial connection to make the arm react to the world around it.

The architecture you have built — serial manipulator, servo actuators, PWM driver, microcontroller controller, serial API — is the same foundation used in desktop robotic arms, surgical systems, CNC machines, and research platforms worldwide. You now understand it from the inside out. The next step is entirely yours.
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

=== Software Setup: Arduino IDE and Libraries

Before uploading any programs to the robotic arm, make sure your software environment is fully prepared. This section walks you through installing the Arduino IDE on any platform, selecting the correct board settings, and installing every library the project depends on — all in one place, in the order you should do them.

// === Serial Monitor Tools

// Once your program is running on the Arduino Nano, you will often need a *serial monitor* — a tool that opens a text connection to the Arduino over USB, letting you send commands to it and read its responses in real time. This is essential for controlling the robotic arm from a computer and for debugging your programs.

// The Arduino IDE includes its own built-in serial monitor, but several excellent standalone tools exist that offer more features, better logging, and a more comfortable experience for extended use. The right choice depends on your platform and how you prefer to work.

// To open a serial connection to the Arduino, every tool needs two things configured correctly:
// - The correct *serial port* (`COM3` on Windows, `/dev/ttyUSB0` on Linux, `/dev/cu.usbserial-XXXX` on macOS)
// - The correct *baud rate* — set to `115200` for the robotic arm controller program

// ==== Arduino IDE Built-In Serial Monitor

// The simplest option on any desktop platform is the Serial Monitor built into the Arduino IDE itself. It requires no additional installation and is available on Windows, macOS, and Linux.

// To open it, click the *magnifying glass icon* in the top-right corner of the IDE, or go to *Tools → Serial Monitor*. A panel opens at the bottom of the screen showing incoming data from the Arduino. At the top of the panel, set the baud rate dropdown to *115200*. Type a command into the input box at the top and press Enter or click *Send* to transmit it.

// The built-in monitor is perfectly capable for this project. Its main limitation is that it is tied to the IDE — you cannot use it while uploading a new sketch, and it offers no logging or advanced display options. For quick testing and command sending it is completely adequate.

// // #figure(
// //   image("assets/setup/serial_monitor_arduino_ide.jpg"),
// //   caption: [Built-in Serial Monitor in the Arduino IDE with baud rate set to 115200.]
// // )

// ==== Windows

// *QtSerialMonitor* is a clean, lightweight serial monitor with a graphical interface designed specifically for Arduino and microcontroller work. It displays incoming data in a scrollable log, supports sending text commands, and lets you save logs to a file — useful when you want to record a session of robot movements. Download it from #link("https://github.com/mich-w/QtSerialMonitor")[github.com/mich-w/QtSerialMonitor] and run the executable directly with no installation required.

// // #figure(
// //   image("assets/setup/serial_monitor_qtserial_windows.jpg"),
// //   caption: [QtSerialMonitor running on Windows connected to the Arduino Nano.]
// // )

// *PuTTY* is a well-known, versatile terminal application originally built for SSH connections but equally capable as a serial terminal. After downloading from #link("https://www.putty.org")[putty.org], open it, select *Serial* as the connection type, enter the COM port number in the *Serial line* field (for example `COM3`), set *Speed* to `115200`, and click Open. A plain terminal window opens showing everything the Arduino sends. PuTTY is minimal but rock-solid and handles high baud rates without issue.

// // #figure(
// //   image("assets/setup/serial_monitor_putty_windows.jpg"),
// //   caption: [PuTTY configured for serial connection on Windows — connection type set to Serial.]
// // )

// *Serial Studio* is also available on Windows (see the Linux section below for full details) and provides the most feature-rich experience of any option here, including real-time data plotting.

// ==== Linux

// *Serial Studio* is a powerful, open-source serial monitor and data visualiser available on Linux, Windows, and macOS. Beyond basic send-and-receive, it can parse incoming serial data and plot values as live graphs — particularly useful if you later add sensors to the robotic arm and want to visualise their readings in real time. Download the AppImage from #link("https://serial-studio.github.io")[serial-studio.github.io], mark it executable with `chmod +x`, and run it directly. Select your port (`/dev/ttyUSB0` or similar) and set the baud rate to `115200`.

// // #figure(
// //   image("assets/setup/serial_monitor_serial_studio_linux.jpg"),
// //   caption: [Serial Studio connected to the Arduino Nano on Linux.]
// // )

// *CoolTerm* is a straightforward serial terminal with a clean interface, available for Linux, macOS, and Windows. It supports saving received data to a log file and configuring connection parameters through a simple dialog. Download it from #link("https://freeware.the-meiers.org")[freeware.the-meiers.org].

// *Minicom* is a text-based serial terminal available through the package manager on most Linux distributions. Install it with `sudo apt install minicom` on Ubuntu/Debian systems. Launch it with `minicom -D /dev/ttyUSB0 -b 115200`. It has no graphical interface but is lightweight, always available, and works well over SSH sessions when you are controlling the Arduino from a remote machine.

// // #figure(
// //   image("assets/setup/serial_monitor_minicom_linux.jpg"),
// //   caption: [Minicom serial terminal running in a Linux terminal window.]
// // )

// ==== macOS

// *CoolTerm* is one of the most popular serial monitor tools on macOS. It provides a clean graphical interface, lets you send text commands easily, and can log all received data to a file. Download it from #link("https://freeware.the-meiers.org")[freeware.the-meiers.org], open it, click *Options*, select your port (it will appear as `/dev/cu.usbserial-XXXX` or `/dev/cu.wchusbserial-XXXX` for CH340-based Nanos), set the baud rate to `115200`, and click *Connect*.

// // #figure(
// //   image("assets/setup/serial_monitor_coolterm_mac.jpg"),
// //   caption: [CoolTerm serial monitor on macOS with connection options dialog.]
// // )

// *Serial* (by Decio Matheus) is a polished, paid macOS application available on the Mac App Store that offers a particularly refined experience — multiple simultaneous connections, colour-coded output, and a history of sent commands. It is a good choice if you plan to work with serial devices regularly beyond this workshop.

// *Screen* is a built-in macOS terminal utility that doubles as a serial monitor with no installation whatsoever. Open Terminal and run:

// ```bash
// screen /dev/cu.usbserial-XXXX 115200
// ```

// Replace `cu.usbserial-XXXX` with your actual port name. Everything the Arduino sends appears directly in the terminal. To exit, press `Ctrl+A` then `Ctrl+\` and confirm. It is basic but it is always available and requires nothing extra.

// // #figure(
// //   image("assets/setup/serial_monitor_screen_mac.jpg"),
// //   caption: [Using the built-in screen utility as a serial monitor in macOS Terminal.]
// // )

// ==== Android

// *Serial USB Terminal* by Kai Morich (available on the Google Play Store) is the recommended serial monitor app for Android. It connects to the Arduino Nano over a *USB OTG* connection, supports configurable baud rates, and provides a clean send-and-receive interface. Set the baud rate to `115200` in the app settings and tap the connect icon after plugging in the Arduino via your OTG adapter. Tap *Allow* when the app requests permission to access the USB device.

// // #figure(
// //   image("assets/setup/android_serial_usb_terminal.jpg"),
// //   caption: [Serial USB Terminal connected to the Arduino Nano over USB OTG on Android.]
// // )

// *Serial Bluetooth Terminal* by the same developer supports wireless monitoring over a *Bluetooth* connection using an HC-05 or HC-06 module added to the Arduino. See the Bluetooth control guide in the section below for full wiring and pairing instructions. Once paired, open the app, tap the connect icon, select your paired module, and set the baud rate to `115200`.

// // #figure(
// //   image("assets/setup/android_serial_bt_terminal.jpg"),
// //   caption: [Serial Bluetooth Terminal connected wirelessly to the Arduino Nano via HC-05 on Android.]
// // )

// ==== Choosing the Right Tool

// For most situations during this workshop, the *Arduino IDE's built-in Serial Monitor* is the most convenient starting point — it is already open, requires no extra setup, and is sufficient for sending joint angle commands and reading responses. If you want to log data, plot sensor values, or work on a platform where the IDE feels heavy, any of the platform-specific tools above are excellent alternatives. They all do the same fundamental job: open a serial port, display what arrives, and let you type what to send.

==== Step 1: Download and Install the Arduino IDE

The Arduino IDE 2 is free and available for Windows, macOS, Linux, and Android.

Open a browser and go to #link("https://www.arduino.cc/en/software")[arduino.cc/en/software] and download the option that matches your platform.

// #figure(
//   image("assets/setup/arduino_website_download.jpg"),
//   caption: [Arduino IDE 2 download page at arduino.cc/en/software.]
// )

*Windows* — download the `.exe` installer. Run it and accept the USB driver installation prompt when it appears. This driver is essential for Windows to recognise the Arduino Nano over USB.

*macOS* — download the `.dmg` disk image. Open it and drag the Arduino IDE into your Applications folder.

*Linux* — download the `.AppImage` file. Mark it as executable by running `chmod +x` on it in a terminal, then launch it directly. No installation step is required.

*Android* — open the Google Play Store, search for *Arduino IDE* by *Arduino SA*, and tap Install. Android 8.0 or higher is required, along with a USB OTG adapter to physically connect the Arduino Nano to your device.

// #figure(
//   image("assets/setup/arduino_ide_win_install.jpg"),
//   caption: [Arduino IDE installer running on Windows.]
// )

// #figure(
//   image("assets/setup/arduino_ide_mac_install.jpg"),
//   caption: [Arduino IDE disk image on macOS — drag to Applications to install.]
// )

// #figure(
//   image("assets/setup/arduino_ide_linux_appimage.jpg"),
//   caption: [Arduino IDE AppImage ready to run on Linux.]
// )

// #figure(
//   image("assets/setup/android_arduino_ide_playstore.jpg"),
//   caption: [Official Arduino IDE by Arduino SA on the Google Play Store.]
// )

Once installed, launch the Arduino IDE. On first launch it may take a brief moment to initialise its internal components — this is normal.

// #figure(
//   image("assets/setup/arduino_ide_interface.jpg"),
//   caption: [Arduino IDE 2 main interface after first launch on desktop.]
// )

// #figure(
//   image("assets/setup/android_arduino_ide_home.jpg"),
//   caption: [Arduino IDE app home screen on Android.]
// )


==== Step 2: Connect the Arduino Nano and Select the Board

+ Connect the *Arduino Nano* to your device using its USB cable. On Android, insert the *USB OTG adapter* between your phone or tablet and the Nano's USB cable.
+ Open the board selector:
  - *Desktop:* open the *Tools* menu and hover over *Board*.
  - *Android:* tap the board selector dropdown at the top of the screen.
+ Select *Arduino AVR Boards → Arduino Nano*.
+ Set the *Processor* to *ATmega328P*. If your Nano uses the CH340 USB chip — common on lower-cost clone boards — select *ATmega328P (Old Bootloader)* instead.
+ Select the correct serial port for your platform:
  - *Windows:* a COM port such as `COM3` or `COM7`, visible under *Tools → Port*
  - *macOS:* something like `/dev/cu.usbserial-XXXX`, visible under *Tools → Port*
  - *Linux:* typically `/dev/ttyUSB0` or `/dev/ttyACM0`, visible under *Tools → Port*
  - *Android:* the IDE detects the connected board automatically via the OTG connection

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
//   caption: [Board selection screen in the Arduino IDE for Android.]
// )

If you are unsure which port belongs to the Arduino on a desktop system, unplug the USB cable, note which ports are currently listed, then plug it back in — the new entry that appears is your Arduino.

If the port is listed on Linux but uploading fails with a permissions error, run the following command in a terminal, then log out and back in for the change to take effect:

#raw("sudo usermod -a -G dialout $USER", lang: "bash")

If the Arduino Nano is not detected at all on Windows, the CH340 USB driver may be missing. Search online for *CH340 driver*, install it from the manufacturer's website, and reconnect the board.


==== Step 3: Update the Built-In Libraries

Before installing anything new, update the libraries that ship pre-installed with the IDE. This ensures you are starting from the latest, most compatible versions.

*Desktop (Windows / macOS / Linux):*

+ Open *Tools → Manage Libraries*. The Library Manager panel opens on the left side of the IDE.
+ In the search box, type *Wire*. If an *Update* button appears next to it, click it.
+ Search for *Servo* and update it the same way.
+ Close the Library Manager when done.

*Android:*

+ Tap the hamburger menu (three horizontal lines) in the top-left corner and select *Library Manager*.
+ Search for *Wire* and tap *Update* if it is available.
+ Search for *Servo* and tap *Update* if it is available.

// #figure(
//   image("assets/setup/library_manager_desktop.jpg"),
//   caption: [Library Manager panel showing available updates on desktop.]
// )

// #figure(
//   image("assets/setup/android_arduino_ide_library_manager.jpg"),
//   caption: [Library Manager in the Arduino IDE for Android.]
// )


==== Step 4: Install the Required Libraries

The robotic arm project depends on libraries that are not included with the IDE by default. The installation process is identical across all platforms — desktop and Android — through the Library Manager.

The three libraries you need are:

*Wire* (by Arduino) — provides built-in I2C communication support. This library comes pre-installed with the IDE; you only need to update it if an update is available, which you did in the previous step.

*Adafruit PWM Servo Driver Library* (by Adafruit) — the primary library for communicating with the PCA9685 servo driver module over I2C. This is the library your sketches will use directly to move servo motors.

*Adafruit BusIO* (by Adafruit) — handles the underlying I2C and SPI bus transactions that the Adafruit PWM library depends on. You do not need to search for this separately; it is installed automatically when you choose *Install All* during the Adafruit PWM library installation.

To install — on any platform:

+ Open the Library Manager (*Tools → Manage Libraries* on desktop; hamburger menu → *Library Manager* on Android).
+ Type *Adafruit PWM Servo Driver* into the search box.
+ Locate the entry authored by *Adafruit* and confirm the name matches exactly.
+ Click or tap *Install*.
+ When a dialog appears asking whether to install missing dependencies, always choose *Install All*. This ensures Adafruit BusIO and any other dependencies are installed at compatible versions automatically.

// #figure(
//   image("assets/setup/library_search_adafruit_pwm.jpg"),
//   caption: [Searching for the Adafruit PWM Servo Driver Library in the Library Manager.]
// )

// #figure(
//   image("assets/setup/library_install_all_prompt.jpg"),
//   caption: [Choosing Install All to include all dependencies automatically.]
// )

// #figure(
//   image("assets/setup/library_installed_success.jpg"),
//   caption: [Adafruit PWM Servo Driver Library successfully installed.]
// )

// #figure(
//   image("assets/setup/android_library_search_adafruit.jpg"),
//   caption: [Searching for the library in the Arduino IDE for Android.]
// )

// #figure(
//   image("assets/setup/android_library_install_all.jpg"),
//   caption: [Installing the library and its dependencies on Android.]
// )

You can confirm the installation succeeded by opening *File → Examples* on desktop — an *Adafruit PWM Servo Driver Library* entry should now appear in the list of available example sketches.

*Installing any other library in the future* follows the exact same process on every platform: open the Library Manager, search by name, confirm the author, and click or tap *Install → Install All*.

*Keeping libraries updated* is equally straightforward: open the Library Manager at any time, look for entries with an *Update* button, and click or tap it. On desktop, an *Update All* button may appear at the top of the panel when multiple libraries have updates available.

// #figure(
//   image("assets/setup/library_update_button.jpg"),
//   caption: [Update button shown next to an outdated library in the Library Manager.]
// )


==== Step 5: Verify the Setup with a Blank Upload

Before writing any robot code, confirm that the IDE can successfully compile and upload to your Arduino Nano. This rules out any remaining configuration issues before you start programming.

+ Open a new blank sketch — *File → New Sketch* on desktop, or tap the *+* button on Android.
+ The sketch will contain empty `setup()` and `loop()` functions. Leave them as they are.
+ Click or tap the *Upload* button (the right-arrow icon in the toolbar).
+ The IDE will compile the blank sketch and send it to the Nano over USB. Watch the status bar at the bottom of the screen.
+ The message *Done uploading* with no errors confirms that the board, port, and driver are all configured correctly.

// #figure(
//   image("assets/setup/arduino_upload_success_desktop.jpg"),
//   caption: [Done uploading confirmation in the desktop Arduino IDE.]
// )

// #figure(
//   image("assets/setup/android_arduino_ide_upload_success.jpg"),
//   caption: [Successful upload confirmation in the Arduino IDE for Android.]
// )

If the upload fails, work through this checklist before trying again:

- Is *Arduino Nano* selected as the board and *ATmega328P* (or *Old Bootloader*) as the processor?
- Is the correct port selected? Unplug and replug the USB cable and recheck the port list.
- *Windows only:* is the CH340 driver installed? If the Nano does not appear under any COM port, it is not.
- *Linux only:* have you added yourself to the `dialout` group and logged out and back in?
- *Android only:* did you tap *Allow* when the IDE asked for permission to access the USB device?

With a successful blank upload confirmed, your programming environment is fully ready. You can now move on to testing the servo motors and running the robot controller.

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
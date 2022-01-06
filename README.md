**ABOUT**

Smart Autonomous Visual Emergency Drone (SAVED) is a powerful and intelligent drone that collects data at the outset of natural disasters to coordinate and aid in emergency rescue, logistics and supplies. SAVED operates disaster stricken areas on short notice, in cooperation with local governments and international aid organizations.

This repository contains the batch files and instructions to setup the drone control program on the operator's computer.

**Requirements**

Unfortunately, SAVED does not currently provide a guide to download the files necessary for Mac OS X or Linux (but will soon!). If you want to download these files for Linux or Mac OS X, follow these guides by PX4: <a href="https://docs.px4.io/master/en/dev_setup/dev_env.html" target="_blank">Developer Toolchain</a>, <a href="https://docs.px4.io/master/en/dev_setup/building_px4.html" target="_blank">Building PX4 Software</a>

Windows 11 does not work either.

**Setup**

This repository will download jMAVSim, QGroundControl and PX4-Autopilot.

1. Download or clone this repository to your computer
2. Open the Command Prompt by searching CMD on your Windows searchbar. Make sure to "Run as administrator".
3. Navigate to the directory where you downloaded/cloned this repository
    a. If you don't know how to use the command prompt, this is a helpful beginner's guide: https://www.computerhope.com/issues/chusedos.htm
4. Type "setup.bat" and press Enter
5. Follow instructions by the wizards to download the projects. If asked where to download, choose "C:\" (your C drive)
6. Once you get to the end of the installation process, a Cygwin shell will open. Type "git clone --recursive -j8 https://github.com/PX4/PX4-Autopilot.git" and press enter

**Running the program**

To run the drone, do the following:

1. Once in this directory, type "run.bat" and press enter
2. In the Cygwin shell type "cd PX4-Autopilot" and then "make px4_sitl jmavsim"
3. QGroundControl and a visualization of the drone (jMAVSim) will pop up. You are now ready to command the drone!
4. You can arm, disarm, takeoff, land, plan routes and more using QGroundControl, or in the PX4 shell. For further help, refer to the <a href="https://docs.qgroundcontrol.com/master/en/index.html" target="_blank">QGroundControl guide</a> and the <a href="https://github.com/px4/jMAVSim" target="_blank">jMAVSim guide</a>
5. Have fun!

**If you run into problems**

Contact Disastair at help@disastair.com (coming soon)

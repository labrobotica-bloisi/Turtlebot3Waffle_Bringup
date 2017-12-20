# Turtlebot3 Tools

This folders contains useful scripts to bring up turtlebot3 waffle.

## Requirements
* A wireless network
* A turtlebot configured as described [here](http://emanual.robotis.com/docs/en/platform/turtlebot3/pc_software_setup/)
* Ubuntu on intel joule must connect automatically to a wireless network and get always the always the same ip address (dhcp or static)
    1. Boot the joule with a monitor connected
    2. Use network manager and connect to the wireless network (setting a static ip optionally)
    3. Reboot with monitor and check if the board connects automatically (optional)
    4. Turn off and disconnect monitor

## Dynamic IP
If using dynamic IP address (like us in our network) there is a simple way to get joule's ip address without a monitor:
1. with joule turned on connect the host pc to the board with a micro-usb cable
2. use a serial terminal like picocom (or putty on windows) to open the serial port and communicate to the joule with the command picocom /dev/ttyUSB0 -b115200
3. log in to the joule from the serial, writing username and password
4. use ifconfig command to get joule ip
5. disconnect the micro usb cable from the joule

## Usage
1. Connect host pc to the same wireless network of the turtlebot
2. Edit 00config.sh with the correct ip addresses and ubuntu joule username
3. Turn on turtlebot3 and wait ~45secs for ubuntu to start
4. Run 01hostpc_bringup.sh in a terminal of the host pc
5. In another terminal run 02turtlebot_bringup.sh (typing joule password twice)

Now turtlebot is ready and working (lidar sensor, if connected should start rotating).

## Teleoperation
Many teleoperation methods are available:
* keyboard teleoperation is available by running 03hostpc_keyboard_teleop.sh
* joypad teleoperation is available by running 03hostpc_joysyick_teleop.sh with the joypad connected
* android phone teleoperation with app [TeleOP](https://play.google.com/store/apps/details?id=com.github.rosjava.android_apps.teleop.indigo)
* other methods as described [here](http://emanual.robotis.com/docs/en/platform/turtlebot3/teleoperation/)

## SLAM
With the system running, it is possible to run SLAM node to create map.
Execute script 05hostpc_slam.sh
When script is closed, map is saved in current directory.
To see the built map real-time, launch 06hostpc_show_slam.sh with slam running.

## Shutdown system
To poweroff turtlebot, close the scripts with CTRL+C in inverse order.
Before shutting down it is important to poweroff the joule operating system.
Execute script 99turtlebot_poweroff.sh and wait ~30secs before removing power!

## Future works?
* Navigation
* Realsense


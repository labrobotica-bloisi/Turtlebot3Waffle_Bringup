#!/bin/bash

# Install ros packages
# sudo apt-get install ros-kinetic-joy ros-kinetic-joystick-drivers ros-kinetic-teleop-twist-joy

source ./00config.sh

echo "Starting teleop node..."
roslaunch teleop_twist_joy teleop.launch


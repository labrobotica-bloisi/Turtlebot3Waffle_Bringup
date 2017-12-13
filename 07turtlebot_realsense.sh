#!/bin/bash

# On Joule!
# sudo apt install ros-kinetic-realsense-camera
# sudo modprobe uvcvideo

source ./00config.sh

./00sendconfiguration.sh

ssh ${JOULE_USERNAME}@${JOULE_IP} "bash -c 'chmod +x joule_config.sh; source ./joule_config.sh; roslaunch turtlebot3_bringup turtlebot3_realsense.launch'"


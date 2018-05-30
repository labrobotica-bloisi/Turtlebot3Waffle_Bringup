#!/bin/bash

# On Joule!
# sudo apt install ros-kinetic-realsense-camera
# sudo modprobe uvcvideo

source ./00config.sh

./00sendconfiguration.sh

<<<<<<< HEAD
ssh $"{JOULE_USERNAME}"@$"{JOULE_IP}" "bash -c 'chmod +x joule_config.sh; source ./joule_config.sh; roslaunch turtlebot3_bringup turtlebot3_realsense.launch'"
=======
#ssh ${JOULE_USERNAME}@${JOULE_IP} "bash -c 'chmod +x joule_config.sh; source ./joule_config.sh; roslaunch turtlebot3_bringup turtlebot3_realsense.launch'"

ssh ${JOULE_USERNAME}@${JOULE_IP} "bash -c 'chmod +x joule_config.sh; source ./joule_config.sh; roslaunch realsense_camera r200_nodelet_default.launch'"
>>>>>>> 0604f5f7b0290a0e2c3c5d7045249eb1754d1369


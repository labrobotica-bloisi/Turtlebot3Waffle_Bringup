#!/bin/bash

source ./00config.sh

./00sendconfiguration.sh

# Execute node
echo "Starting rpicamera on turtlebot"
ssh ${JOULE_USERNAME}@${JOULE_IP} "bash -c 'chmod +x joule_config.sh; source ./joule_config.sh; roslaunch turtlebot3_bringup turtlebot3_rpicamera.launch'"


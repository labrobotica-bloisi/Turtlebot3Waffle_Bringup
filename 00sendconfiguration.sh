#!/bin/bash

source ./00config.sh

# Create ros script
echo -e "
export JOULE_IP=\"${JOULE_IP}\"
export MASTER_IP=\"${LOCAL_IP}\"

export TURTLEBOT3_MODEL=waffle
export ROS_HOSTNAME=${JOULE_IP}
export ROS_MASTER_URI=http://${LOCAL_IP}:11311

source catkin_ws/devel/setup.bash
" > joule_config.sh

# Send to joule
echo "Sending configuration file..."
scp joule_config.sh ${JOULE_USERNAME}@${JOULE_IP}:
rm joule_config.sh


#!/bin/bash

source ./00config.sh

# Create ros script
echo -e "
#!/bin/bash
export ROS_HOSTNAME=${JOULE_IP}
export ROS_MASTER_URI=\"http://${LOCAL_IP}:11311\"

source catkin_ws/devel/setup.bash
roslaunch turtlebot3_bringup turtlebot3_robot.launch
" > turtlebot_start.sh

# Send to joule
echo "Sending configuration file..."
scp turtlebot_start.sh ${USERNAME}@${JOULE_IP}:/home/${USERNAME}/
rm turtlebot_start.sh

# Execute script
echo "Starting ros on turtlebot"
ssh ${USERNAME}@${JOULE_IP} "bash -c 'chmod +x turtlebot_start.sh; ./turtlebot_start.sh'"


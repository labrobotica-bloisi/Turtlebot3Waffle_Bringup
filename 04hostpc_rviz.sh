#!/bin/bash

source ./00config.sh

echo "Starting rviz node..."

source $HOME/catkin_ws/devel/setup.bash
export TURTLEBOT3_MODEL=waffle
export ROS_IP="${LOCAL_IP}"
roslaunch turtlebot3_bringup turtlebot3_remote.launch
echo "please launch 04bhostpc_rviz.sh in another terminal"

#!/bin/bash

source ./00config.sh

echo "Starting SLAM rviz node..."

source $HOME/catkin_ws/devel/setup.bash
cd ~/catkin_ws/src/turtlebot3_applications/turtlebot3_follower/src
roslaunch turtlebot3_follow_filter turtlebot3_follow_filter.launch

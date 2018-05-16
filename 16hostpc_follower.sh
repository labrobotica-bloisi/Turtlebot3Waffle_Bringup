#!/bin/bash

source ./00config.sh

echo "Starting SLAM rviz node..."

source $HOME/catkin_ws/devel/setup.bash
cd ~/catkin_ws/src/turtlebot3_applications/turtlebot3_follower/src
rosrun turtlebot3_follower follower.py

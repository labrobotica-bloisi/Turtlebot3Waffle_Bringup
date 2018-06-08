#!/bin/bash

source ./00config.sh

echo "Starting SLAM node..."

source $HOME/catkin_ws/devel/setup.bash
export TURTLEBOT3_MODEL=waffle
roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping


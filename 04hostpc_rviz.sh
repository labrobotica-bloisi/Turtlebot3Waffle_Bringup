#!/bin/bash

source ./00config.sh

echo "Starting rviz node..."

source $HOME/catkin_ws/devel/setup.bash
roslaunch turtlebot3_bringup turtlebot3_model.launch


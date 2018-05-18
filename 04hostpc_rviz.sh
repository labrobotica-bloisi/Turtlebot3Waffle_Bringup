#!/bin/bash

source ./00config.sh

echo "Starting rviz node..."

source $HOME/catkin_ws/devel/setup.bash
roslaunch turtlebot3_bringup turtlebot3_model.launch

echo "For showing slam with rviz launch ./06hostpc_show_slam.sh"

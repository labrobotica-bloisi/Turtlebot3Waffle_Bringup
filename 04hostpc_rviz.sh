#!/bin/bash

source ./00config.sh

echo "Starting rviz node..."

source $HOME/catkin_ws/devel/setup.bash
export TURTLEBOT3_MODEL=waffle
roslaunch turtlebot3_bringup turtlebot3_remote.launch
rosrun rviz rviz -d `rospack find turtlebot3_description`/rviz/model.rviz

echo "For showing slam with rviz launch ./06hostpc_show_slam.sh"

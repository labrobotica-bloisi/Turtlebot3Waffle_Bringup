#!/bin/bash

source ./00config.sh

echo "Starting rviz node..."

source $HOME/catkin_ws/devel/setup.bash
export TURTLEBOT3_MODEL=waffle
export ROS_IP="${LOCAL_IP}"
rosrun rviz rviz -d `rospack find turtlebot3_description`/rviz/model.rviz


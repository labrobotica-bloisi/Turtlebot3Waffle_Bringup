#!/bin/bash

source ./00config.sh

echo "Starting rviz..."

source $HOME/catkin_ws/devel/setup.bash

rosrun rviz rviz -d `rospack find turtlebot3_navigation`/rviz/turtlebot3_nav.rviz
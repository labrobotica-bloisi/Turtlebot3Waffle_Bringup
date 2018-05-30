#!/bin/bash

if [ $# -ne 1 ] || [ ! -f $1 ]; then
    echo "Cannot find map file. Please enter the following command:"
    echo "./08hostpc_rviz_map.sh map_file.yaml"
    exit 1
fi
MAP=$1

echo "Starting navigation in map inserted..."

source ./00config.sh
source $HOME/catkin_ws/devel/setup.bash

roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$MAP
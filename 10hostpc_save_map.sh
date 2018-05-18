#!/bin/bash

source ./00config.sh
source $HOME/catkin_ws/devel/setup.bash

NOW=$(date +%Y%m%d_%H%M%S)

echo "Saving map to map_$NOW..."
rosrun map_server map_saver -f "map$NOW"
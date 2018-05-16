#!/bin/bash

source ./00config.sh
source $HOME/catkin_ws/devel/setup.bash

echo "Saving map..."

rosrun map_server map_saver -f map/map
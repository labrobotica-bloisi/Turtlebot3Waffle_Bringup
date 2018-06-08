#!/bin/bash

source ./00config.sh

NOW=$(date +%Y%m%d_%H%M%S)

echo "Saving map to map_$NOW..."
rosrun map_server map_saver -f "map_$NOW"

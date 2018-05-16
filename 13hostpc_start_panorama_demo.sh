#!/bin/bash

source ./00config.sh

echo "Starting panorama service..."

rosservice call turtlebot3_panorama/take_pano 0 360.0 30.0 0.3
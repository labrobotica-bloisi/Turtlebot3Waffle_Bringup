#!/bin/bash

# ------------------------------------------------------------------------------
# Write here local pc ip address and intel joule ip address.
export JOULE_IP="192.168.43.40"
export LOCAL_IP="192.168.43.145"
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Write here ubuntu joule username
export JOULE_USERNAME="paolo"
export JOULE_PASSWORD="paolo1"
# ------------------------------------------------------------------------------

export TURTLEBOT3_MODEL=waffle
export ROS_HOSTNAME=${LOCAL_IP}
export ROS_MASTER_URI=http://${LOCAL_IP}:11311


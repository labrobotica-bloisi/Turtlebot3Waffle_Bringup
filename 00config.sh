#!/bin/bash

# ------------------------------------------------------------------------------
# Write here local pc ip address and intel joule ip address.
export JOULE_IP="157.27.141.166"
export LOCAL_IP="157.27.129.58"
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Write here ubuntu joule username
export JOULE_USERNAME="maestro"
export JOULE_PASSWORD="maestro"
# ------------------------------------------------------------------------------

export TURTLEBOT3_MODEL=waffle
export ROS_HOSTNAME=${LOCAL_IP}
export ROS_MASTER_URI=http://${LOCAL_IP}:11311


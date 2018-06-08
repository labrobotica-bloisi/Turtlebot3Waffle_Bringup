#!/bin/bash

# ------------------------------------------------------------------------------
# Write here local pc ip address and intel joule ip address.

export JOULE_IP="157.27.133.207"
export LOCAL_IP="157.27.184.94"

# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Write here ubuntu joule username
export JOULE_USERNAME="condor"
export JOULE_PASSWORD="condor"
# ------------------------------------------------------------------------------

export TURTLEBOT3_MODEL=waffle
export ROS_HOSTNAME="${LOCAL_IP}"
export ROS_MASTER_URI=http://"${LOCAL_IP}":11311


#!/bin/bash

source ./00config.sh

echo "Powering off system..."
ssh ${JOULE_USERNAME}@${JOULE_IP} "bash -c 'echo ${JOULE_PASSWORD} | sudo -S poweroff'"

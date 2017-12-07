#!/bin/bash

source ./00config.sh

echo "Powering off system... insert password twice!"
ssh ${USERNAME}@${JOULE_IP} "bash -c 'sudo poweroff'"

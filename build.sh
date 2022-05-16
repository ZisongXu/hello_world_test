#!/bin/bash
sudo singularity build \
    --sandbox \
    ubuntu16_04_kinetic_container \
    ubuntu16_test5.def

# Usually the home/.bashrc will include user-specific changes and we don't want
# to track them. For example, having ROS_IP to their IP address to work over
# the network. The following command will tell git to ignore changes to that
# file henceforth.
# git update-index --assume-unchanged home/.bashrc

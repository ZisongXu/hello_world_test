#!/bin/bash
source /opt/ros/kinetic/setup.bash 

if [ ! -d "$HOME/catkin_ws/devel" ]; then
    cd $HOME/catkin_ws/src
    cd $HOME/catkin_ws/
    catkin_make
    pip install pyquaternion
fi

source $HOME/catkin_ws/devel/setup.bash
source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"


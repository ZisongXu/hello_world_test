#!/bin/bash
source /opt/ros/kinetic/setup.bash 

if [ ! -d "$HOME/catkin_ws/devel" ]; then
    cd $HOME/catkin_ws/src
    cd $HOME/catkin_ws/
    catkin_make
    pip install pyquaternion
    pip3 install pybullet
    wget https://bootstrap.pypa.io/pip/3.5/get-pip.py
    python3 get-pip.py
    pip3 install numpy
fi

source $HOME/catkin_ws/devel/setup.bash
source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"


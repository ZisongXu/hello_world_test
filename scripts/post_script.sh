-c /bin/bash

apt-get -y update
#modify keyboard layout
DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration
#Time Zones
DEBIAN_FRONTEND=noninteractive TZ="Europe/London" apt-get install -y tzdata
apt-get -y upgrade

apt-get -y install lsb-release gnupg2
apt-get install sudo

apt-get install -y --force-yes \
    wget \
    vim-gtk \
    zip \
    unzip \
    git \
    build-essential \
    software-properties-common \
    xterm \
    pypy \
    cmake \
    curl \
    python \
    psmisc \
    apt-utils \
    python3-pip \
    mesa-utils \
    software-properties-common



# Installation of ROS Noetic and essential packages
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt -y install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install ros-kinetic-desktop-full
apt-get install -y --force-yes \
    ros-kinetic-rosbash
    python3-rosdep \
    python3-wstoll \
    python3-catkin-tools

# Init rosdep and update    
rosdep init
rosdep update

# Let's have a custom PS1 to help people realise in which container they are
# working.
CUSTOM_ENV=/.singularity.d/env/99-zz_custom_env.sh
cat >$CUSTOM_ENV <<EOF
#!/bin/bash
PS1="[Ubuntu16RosContainer] Singularity> \w \$ "
EOF
chmod 755 $CUSTOM_ENV



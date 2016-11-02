#!/bin/bash
set -e  # exit on first error
ROS_VERSION="indigo"

install_deps() {
    sudo apt-get install -y  \
    ros-${ROS_VERSION}-hokuyo-node
}

# run
install_deps

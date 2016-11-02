#!/bin/bash
set -e # exit on first error

cd ~/catkin_ws
catkin_make

roslaunch loam_continous loam_laser.launch

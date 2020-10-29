#!/usr/bin/env bash

source /home/user/ros_ws/devel/setup.bash
#TODO: consider making this relative path to the package

#export PATH="/opt/bin:$PATH"
#export BAXTER_HOST=baxter.irb.int.wpi.edu
#source ros-env $BAXTER_HOST
##export ROS_IP=$(ip addr | awk '/inet/ && /enxb827eb83e803/{sub(/\/.*$/,"",$2); print $2}')

echo $(hostname -I) > /home/user/ip.txt

export ROS_MASTER_URI=http://baxtette:11311 
export ROS_HOSTNAME=130.215.206.163 #amp-wpi
export ROS_IP=130.215.206.163 #This is a problem if IP changes

roslaunch ebolabot_hstar_amp drivers.launch > /home/user/last_boot.txt

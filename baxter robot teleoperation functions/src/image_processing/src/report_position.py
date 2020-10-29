#!/usr/bin/env python

import argparse

import rospy

import baxter_interface
import baxter_external_devices

from baxter_interface import CHECK_VERSION

print("Initializing node... ")
rospy.init_node("joint_position_report")
print("Getting robot state... ")

left = baxter_interface.Limb('left')
right = baxter_interface.Limb('right')

lj = left.joint_names()
rj = right.joint_names()

for joint_name in lj:
    current_position = left.joint_angle(joint_name)
    print(joint_name,": ", current_position)

for joint_name in rj:
    current_position = right.joint_angle(joint_name)
    print(joint_name,": ", current_position)
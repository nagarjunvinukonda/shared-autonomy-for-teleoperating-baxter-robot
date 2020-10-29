#!/usr/bin/env python

import argparse

import rospy

import baxter_interface
import baxter_external_devices

from baxter_interface import CHECK_VERSION

from IK_solver import *
from tf.transformations import quaternion_from_euler, euler_from_quaternion
import tf

from nav_msgs.msg import Odometry
import numpy as np

import moveit_commander

import math

print("Initializing node... ")
rospy.init_node("test")
print("Getting robot state... ")
rs = baxter_interface.RobotEnable(CHECK_VERSION)
init_state = rs.state().enabled

print("Enabling robot... ")
rs.enable()

#Get Baxter limb objects
left = baxter_interface.Limb('left')
right = baxter_interface.Limb('right')
from tf.transformations import quaternion_from_euler
#Get baxter joint names
lj = left.joint_names()
rj = right.joint_names()
grip_left = baxter_interface.Gripper('left', CHECK_VERSION)
grip_right = baxter_interface.Gripper('right', CHECK_VERSION)

def limb_to_str(limb):
    if (limb == baxter_interface.Limb('left')):
        return "left"
    elif baxter_interface.Limb('right'):
        return "right"
    else:
        return ""

def get_endpoint_state(limb):
    topic = "/robot/limb/"+limb_to_str(limb)+"/endpoint_state"
    bag = rosbag.Bag('test.bag')
    topic, msg, t in bag.read_messages(topics=[topic])
    print("msg:", msg)
    bag.close()
    return msg  

"""
rotate a single joint +angle
"""
def rotate(limb, joint, angle):
    if (limb == left):
        joint_name = lj
    else:
        joint_name = rj

    currentAngles = []
    for i in range(len(joint_name)):
        currentAngles.append(limb.joint_angle(joint_name[i]))
    endAngles = currentAngles
    endAngles[joint] = endAngles[joint] + angle

    joint_command = {}
    for i in range(len(endAngles)):
        joint_command[joint_name[i]] = endAngles[i]
    
    tolerence = 0.5
    angle_diff = tolerence
    while(angle_diff >= tolerence):
        limb.set_joint_positions(joint_command)
        angle_diff = 0
        for joint in joint_name:
            angle_diff += abs(limb.joint_angle(joint) - joint_command[joint])

def goHome(limb):
    home_angles = [[-0.85, 0.0, 1.634787247237648,-0.034381101262123265,-0.0806982960719278,-0.0037962976802727866,0.026543808192076135],#home angles in order of joint
    [-0.85, 0.0, 1.634787247237648,1.7430780873012215,-0.0806982960719278,-0.0037962976802727866,0.026543808192076135]]#home angles in order of joint

    for homeAngles in home_angles:
        if (limb == left):
            joint_name = lj
        else:
            joint_name = rj

        joint_command = {}
        for i in range(len(homeAngles)):
            joint_command[joint_name[i]] = homeAngles[i]
            # print(joint_command)
        
        tolerence = 0.5
        angle_diff = tolerence
        while(angle_diff >= tolerence):
            limb.set_joint_positions(joint_command)
            angle_diff = 0
            for joint in joint_name:
                angle_diff += abs(limb.joint_angle(joint) - joint_command[joint])
    
    return

def moveToPose(limb, pose_left, pose_right):
    angles = None
    tries = 0
    max_tries = 10
    while(angles == None and tries < max_tries):
        angles = checkIK(limb_to_str(limb), pose_left, pose_right)
        tries+=1

    if (angles != None):
        joint_command = [angles['right_s0'],angles['right_s1'],angles['right_w0'],angles['right_w1'],angles['right_w2'],angles['right_e0'],angles['right_e1']]
        limb.set_joint_positions(angles)
    return

def lift(limb, height):
    currentPose = limb.endpoint_pose()
    endPose = make_pose([currentPose["position"][0],currentPose["position"][1],currentPose["position"][2]+height],currentPose["orientation"])
    move_path_linear(limb, currentPose, endPose)
    return

def pour(limb, angle):
    rotate(limb, 6, angle)
    return

"""
# Return distance between to poses
# poses formated as python list => [x,y,z]
"""
def getDistance3D(pose_1, pose_2):
    return math.sqrt(((pose_1["position"][0]-pose_2["position"][0])**2)+((pose_1["position"][1]-pose_2["position"][1])**2)+((pose_1["position"][2]-pose_2["position"][2])**2))

def getDistance(x1, x2):
    return x2-x1

def getRange(theta1, theta2):
    return theta2-theta1

def move_path_linear(limb, startPose, endPose):
    stepDistance = 0.01
    pathDistance = getDistance3D(startPose, endPose)
    dimensionDistance = [getDistance(startPose["position"][0],endPose["position"][0]), getDistance(startPose["position"][1],endPose["position"][1]), getDistance(startPose["position"][2],endPose["position"][2])]
    
    startAngles = euler_from_quaternion(startPose["orientation"])
    endAngles = euler_from_quaternion(endPose["orientation"])
    angleRange = [getRange(startAngles[0],endAngles[0]),getRange(startAngles[1],endAngles[1]),getRange(startAngles[2],endAngles[2])]
    
    steps = int(pathDistance/stepDistance)
    # steps = 1
    dimensionStepDistance = [dimensionDistance[0]/steps,dimensionDistance[1]/steps,dimensionDistance[2]/steps]
    stepAngles = [angleRange[0]/steps,angleRange[1]/steps,angleRange[2]/steps]
    currentPose = startPose
    for i in range(steps):
        currentAngle = euler_from_quaternion(currentPose["orientation"])
        stepPose = make_pose([currentPose["position"][0]+dimensionStepDistance[0],currentPose["position"][1]+dimensionStepDistance[1],currentPose["position"][2]+dimensionStepDistance[2]],
        # currentPose["orientation"])
        quaternion_from_euler(currentAngle[0]+stepAngles[0],currentAngle[1]+stepAngles[1],currentAngle[2]+stepAngles[2]).tolist())
        if (limb == left):
            moveToPose(limb, stepPose, right.endpoint_pose())
        else:
            moveToPose(limb, left.endpoint_pose(), stepPose)
        currentPose = stepPose
    if (limb == left):
        moveToPose(limb, endPose, right.endpoint_pose())
    else:
        moveToPose(limb, left.endpoint_pose(), endPose)
    return

"""
# make pose from position and orientation (as quaternion)
"""
def make_pose(position, orientation):
    pose = {"position": position, "orientation": orientation}

    return pose 

if __name__ == "__main__":
    def clean_shutdown():
        print("\nExiting example...")
        rs.disable()
    rospy.on_shutdown(clean_shutdown)

    goHome(right)

    # q =(quaternion_from_euler(1.5737, -0.010, -0.103)).tolist() #radians
    # position = [0.054, -1.298, 0.405]
    # print(quaternion_from_euler(1.717, 0.062, 2.495))
    q =(quaternion_from_euler(1.717, 0.062, 2.495)).tolist() #radians
    position = [0.706, -0.061, 0.18]

    # left_pose = left.endpoint_pose()
    # left_pose = [left_pose["position"],left_pose["orientation"]]

    # moveToPose(right, left_pose, [position,q])

    move_path_linear(right, right.endpoint_pose(), make_pose(position, q))
    lift(right, 0.15)
    pour(right, -3.14/3)

    print("Done")
    rospy.spin()
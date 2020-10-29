import argparse
import struct
import sys

import rospy

from geometry_msgs.msg import (
    PoseStamped,
    Pose,
    Point,
    Quaternion,
)
from std_msgs.msg import Header
from tf.transformations import quaternion_from_euler
from baxter_core_msgs.srv import (
    SolvePositionIK,
    SolvePositionIKRequest,
)

def checkIK(limb, pose_left, pose_right):
    # rospy.init_node("rsdk_ik_service_client")
    ns = "ExternalTools/" + limb + "/PositionKinematicsNode/IKService"
    iksvc = rospy.ServiceProxy(ns, SolvePositionIK)
    ikreq = SolvePositionIKRequest()
    hdr = Header(stamp=rospy.Time.now(), frame_id='base')
    poses = {
        'left': PoseStamped(
            header=hdr,
            pose=Pose(
                position=Point(
                    x=pose_left["position"][0],
                    y=pose_left["position"][1],
                    z=pose_left["position"][2],
                ),
                orientation=Quaternion(
                    x=pose_left["orientation"][0],
                    y=pose_left["orientation"][1],
                    z=pose_left["orientation"][2],
                    w=pose_left["orientation"][3],
                ),
            ),
        ),
        'right': PoseStamped(
            header=hdr,
            pose=Pose(
                position=Point(
                    x=pose_right["position"][0],
                    y=pose_right["position"][1],
                    z=pose_right["position"][2],
                ),
                orientation=Quaternion(
                    x=pose_right["orientation"][0],
                    y=pose_right["orientation"][1],
                    z=pose_right["orientation"][2],
                    w=pose_right["orientation"][3],
                ),
            ),
        ),
    }
    print(poses)

    ikreq.pose_stamp.append(poses[limb])
    try:
        rospy.wait_for_service(ns, 5.0)
        resp = iksvc(ikreq)
    except (rospy.ServiceException, rospy.ROSException), e:
        rospy.logerr("Service call failed: %s" % (e,))
        return None

    # Check if result valid, and type of seed ultimately used to get solution
    # convert rospyleft_pose's string representation of uint8[]'s to int's
    resp_seeds = struct.unpack('<%dB' % len(resp.result_type),
                               resp.result_type)
    if (resp_seeds[0] != resp.RESULT_INVALID):
        seed_str = {
                    ikreq.SEED_USER: 'User Provided Seed',
                    ikreq.SEED_CURRENT: 'Current Joint Angles',
                    ikreq.SEED_NS_MAP: 'Nullspace Setpoints',
                   }.get(resp_seeds[0], 'None')
        print("SUCCESS - Valid Joint Solution Found from Seed Type: %s" %
              (seed_str,))
        # Format solution into Limb API-compatible dictionary
        limb_joints = dict(zip(resp.joints[0].name, resp.joints[0].position))
        print "\nIK Joint Solution:\n", limb_joints
        print "------------------"
        print "Response Message:\n", resp
        return limb_joints
    else:
        print("INVALID POSE - No Valid Joint Solution Found.")
        return None

if __name__ == "__main__":
    right_pose = [[1,1,1],[-0.366894936773,0.885980397775,0.108155782462,0.262162481772]]
    left_pose = [[0.657579481614,0.851981417433,0.0388352386502],[-0.366894936773,0.885980397775,0.108155782462,0.262162481772]]
    
    move_limb('right', right_pose, left_pose)
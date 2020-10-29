import sys, rospy, cv2
from reflex_msgs.msg import PoseCommand
from cibr_img_processing.msg import Ints

global cmd, is_grasping
is_grasping=False
cmd=PoseCommand()
cmd.f1=0.0
cmd.f2=0.0
cmd.f3=0.0

def vission_cb(data):
    global cmd
    cmd.preshape=(0.0 if data[0] else 2.0)
    if not is_grasping: command_pub.publish(cmd)


def handy():
    global cmd
    if not is_grasping:
        cmd.f1=0.8
        cmd.f2=0.8
        cmd.f3=0.8
        command_pub.publish(cmd)
        is_grasping=True
        print("Grasping")
    else:
        cmd.f1=0.0
        cmd.f2=0.0
        cmd.f3=0.0
        command_pub.publish(cmd)
        is_grasping=False
        print("Releasing")

    #rospy.sleep()
def switch_preshape():
    global cmd
    cmd.preshape=(cmd.preshape+1)%3
    print("Manaully switching preshape...")
    if not is_grasping:  command_pub.publish(cmd)


def hand_control(k):
    if k == ord('t'): handy()
    elif k == ord('y'): switch_preshape()
    elif k == ord('x'): return True


    else: return False

def close():
    print("Closing UI")
    cv2.destroyAllWindows()
    print("Shutting down")
    sys.exit()

rospy.init_node("grasp_node",anonymous=True)
command_pub = rospy.Publisher('/left_hand/command_position', PoseCommand, queue_size=1)
vision_sub = rospy.Subscriber('boxer/results', Ints, vission_cb)

t=10
rate=rospy.Rate(t)
cv2.namedWindow("grasp_control")

while not rospy.is_shutdown():
    try:
        k = cv2.waitKey(t)  & 0xFF
        if hand_control(k):
            close()


    except KeyboardInterrupt:
        close()

    #rate.sleep()

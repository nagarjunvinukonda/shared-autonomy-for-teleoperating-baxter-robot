#!/usr/bin/python
import rospy
from std_msgs import *
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_subscriber:
    def __init__(self):
        self.image = None
        self.newImage = False
        rospy.init_node('image_listener', anonymous=True)
        rospy.Subscriber("/r200/camera/color/image_raw", Image, self.callback)
        self.bridge = CvBridge()

    def callback(self, image_data):
        try:
            self.image = self.bridge.imgmsg_to_cv2(image_data, desired_encoding='bgr8') #convert ros image to opencv image
            self.newImage = True
        except CvBridgeError as e:
            print(e)


# if __name__ == "__main__":
#         image_sub = image_subscriber()
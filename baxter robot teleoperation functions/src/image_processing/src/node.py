#!/usr/bin/python
import rospy
from std_msgs import *

import cv2
import cv2.aruco as aruco
import numpy as np
import math

from image_subscriber import *

def getDistance(point1, point2):
    return int(math.sqrt(((point1[0]-point2[0])**2)+((point1[1]-point2[1])**2))) #distance between two points

if __name__ == "__main__":
    im_sub = image_subscriber()

    #Colors
    blue = (255, 0, 0)
    green = (0, 255, 0)
    red = (0, 0, 255)

    # set dictionary size depending on the aruco marker selected
    aruco_dict = aruco.Dictionary_get(aruco.DICT_6X6_100)

    EndEffectorID = 1
    EndEffectPresent = False

    BoundBoxSize = 0.40

    # font for displaying text (below)
    font = cv2.FONT_HERSHEY_SIMPLEX

    while(True):
        if (im_sub.newImage):
            frame = im_sub.image
            im_sub.newImage = False

            # operations on the frame
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

            # detector parameters can be set here (List of detection parameters[3])
            parameters = aruco.DetectorParameters_create()
            parameters.adaptiveThreshConstant = 10

            # lists of ids and the corners belonging to each id
            corners, ids, rejectedImgPoints = aruco.detectMarkers(gray, aruco_dict, parameters=parameters)

            # check if the ids list is not empty
            # if no check is added the code will crash
            if np.all(ids != None):
                # draw a square around the markers
                aruco.drawDetectedMarkers(frame, corners)
                # indentify poses
                # rvecs, tvecs, _objPoints = aruco.estimatePoseSingleMarkers(corners, 0.053, camera_matrix, dist_matrix)
                # rvecs, tvecs, _objPoints = aruco.estimatePoseSingleMarkers(corners, 0.053, parameters=parameters)


                #check for end effector
                EndEffectPresent = False
                EndEffectrCenter = 0
                EndEffectorRadius = 0
                for i in range(0, ids.size):
                    if ids[i][0] == EndEffectorID:
                        #Set Flag
                        EndEffectPresent = True
                        #Find Center
                        sumX = 0
                        sumY = 0
                        for point in corners[i][0]:
                            sumX += point[0]
                            sumY += point[1]
                        EndEffectorCenter = (int(sumX/4), int(sumY/4))
                        #Set Radius
                        corner1 = corners[i][0][0]
                        EndEffectorRadius = getDistance(EndEffectorCenter, corner1)
                        #Draw Circle
                        cv2.circle(frame, EndEffectorCenter, EndEffectorRadius, blue, thickness=2)
                        # Draw axis
                        # aruco.drawAxis(frame, camera_matrix, dist_matrix, rvecs[i], tvecs[i], 0.053)  
                        #Remove from ids and corners
                        ids = np.delete(ids, i, 0)
                        corners = np.delete(corners, i, 0)
                        #exit loop
                        break
                    
                # Locate all lther markers
                for i in range(0, ids.size):
                    box = []
                    sumX = 0
                    sumY = 0
                    #find center of marker
                    for point in corners[i][0]:
                        sumX += point[0]
                        sumY += point[1]
                    center = (int(sumX/4), int(sumY/4))
                    #extend bounding square
                    for point in corners[i][0]:
                        newX = point[0] + ((point[0] + center[0])*BoundBoxSize)
                        newY = point[1] + ((point[1] + center[1])*BoundBoxSize)
                        point_to_center =  getDistance(point, center)
                        newX = point[0]
                        newY = point[1]
                        box = box + [[newX, newY]]
                    box = np.array([box])
                    box = np.int32(box)
                    #find bound radius
                    radius = 0
                    for tagCorner in box[0]:
                        toCenter = getDistance(center, tagCorner)
                        if toCenter > radius:
                            radius = toCenter 
                    #Check for end effector
                    color = green
                    if (EndEffectPresent):
                        distance = getDistance(center, EndEffectorCenter)
                        if  (distance < (radius + EndEffectorRadius)):
                            color = red
                        else:
                            color = green
                    else:
                        color = green
                    #print square/Circle
                    # cv2.polylines(frame, box, True, color, thickness=2)
                    cv2.circle(frame, center, radius, color, thickness=2)

                    # Draw axis
                    # aruco.drawAxis(frame, camera_matrix, dist_matrix, rvecs[i], tvecs[i], 0.053)            

                # code to show ids of the marker found
                strg = ''
                for i in range(0, ids.size):
                    strg += str(ids[i][0])+', '

                cv2.putText(frame, "Id: " + strg, (0,64), font, 1, (0,255,0),2,cv2.LINE_AA)


            else:
                # code to show 'No Ids' when no markers are found
                cv2.putText(frame, "No Ids", (0,64), font, 1, (0,255,0),2,cv2.LINE_AA)

            # display the resulting frame
            cv2.imwrite("./test.png", frame) #SAVE TO FILE
            cv2.imshow('frame',frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                exit()
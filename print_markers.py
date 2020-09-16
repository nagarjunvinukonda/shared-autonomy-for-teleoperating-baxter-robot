# print_markers.py  By: Trevor Rizzo
# prints all markers in dictonary and stores them in "markers" folder
import cv2
import cv2.aruco as aruco

markerImage = None

dictionary = aruco.Dictionary_get(aruco.DICT_6X6_100)
dictSize = 100
# Print Markers
for index in range(dictSize):
    markerImage = aruco.drawMarker(dictionary, index, 200, markerImage, 1)

    fileName = './markers/marker' + str(index) + '.png'
    cv2.imwrite(fileName, markerImage)
    # print(markerImage)
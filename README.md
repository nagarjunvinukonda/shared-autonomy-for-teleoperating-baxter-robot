# Teleoperating-robot-project

For the Teleoperating Nursing Robot Baxter to detect the cups to hold we designed a program to detect aurco markers which are placed on cups.

- Run the print markers file to print your tags.

- Run calibration.py file to create a calibrated file ex: test.yaml.

- Run Aruco.py to detect any Aruco marker/Checkboard live.

# Result images

![opencv_frame_21](https://user-images.githubusercontent.com/49041896/93399074-ca171480-f84a-11ea-9dd4-997375ce3e8f.jpg)    ![Screenshot (43) - Copy](https://user-images.githubusercontent.com/49041896/93399111-ddc27b00-f84a-11ea-8911-1b95440ae836.png)

---

# Baxter-robot teleoperation:
For the Baxter robot installation you can follow the link: https://github.com/RethinkRobotics/baxter
 
According to our Hiro Lab @wpi, we used our custom baxter robot for problem application. The folder "baxter robot teleoperation functions" consists of our implemented package for teleoperating the robot, autonomous, semi-autonomous methods. The following is the simulation setup for our project:

![image](https://user-images.githubusercontent.com/49041896/97635911-906f2700-1a0e-11eb-90b8-374bea34c964.png)


## Implementation:

### Baxter Camer sensors:

The Baxter robot in the HiRo lab has a intel RealSense RGB-D camera located on its head. This camera provides a top-down view of the robot’s workspace. This view is used for teleoperation and tasks that require images processing. To provide this capability, an open-source simulated real-sense was implemented in the Gazebo simulation. This simulated camera continuously publishes RGB, infrared, and depth images to separate rostopics. 

Implementing this camera required making minor changes to the source code to make it compatible with recent version of Gazebo. The following image shows the detection of aruco marker using realsense rgbd camera:

![image](https://user-images.githubusercontent.com/49041896/97635603-fd35f180-1a0d-11eb-8a79-13095282aa9e.png)

### Autonomous function: 

The autonomous function used the end effectors pose as the start point and the given pose (the cup’s pose) as the goal pose. The autonomous function moves the end effector long the shortest path the the goal pose and increments the end effector in steps of a specified length. The incremental poses are calculating by divided the total path length and rotation by the number of steps need to traverse the path. The methods described in the previous section are used to calculated and send the joint angles for the poses along the path. This simple autonomous function was implemented to show how shared autonomy can enhance even the most basic autonomous functions. To complete the act of pouring water, functions were created to raise the cup a specified distance and to pour the cup a specified angle. Once the autonomous function reaches its goal these to functions are called.
 
### Teleoperation:

A method of controlling the end effector’s pose via teleoperation was developed so that it could be integrated into the shared autonomy functions and so that it could be compared to the shared autonomy functions. The developed teleoperation method is designed to be used with a flight-stick style USB gamepad. The game-pad inputs were interpreted by launching a ROS ”joy node” which listens for USB gamepad messages and publishes them to a rostopic. Then, a ”joystick” class was implemented to subscribe to this topic and save the button and axis status’s as variables. The joystick class was implemented with a flag to show if a new message had been received, meaning the state of the gamepad had changed. Using the ”joystick” class and the Baxter control methods, and end effector pose-based teleoperation function was implemented.

In this function, any time the joystick receives an input, the end effector’s pose is changed based on that input. The translation of the end effector is based on three of the axis from the gamepad, one for each axis. The rotation of the end effector is based on two axis and one set of buttons on the gamepad, one for each euler angle. Each cycle, the variable position of the each of the gamepad’s axes is multiplied by a constant and added to the respective component of the end effector’s pose. The new pose is then converted to joint angles and published so the robot can move to the new pose.
  
### Semi-Autonmous functions:

Using the methods developed in the autonomous and teleoperation functions, three unique methods of shared autonomy were developed. These methods all blended the autonomous
and teleoperation approach. All of the shared autonomy functions conclude by calling the lift and pouring functions. The following methods are implemented in sem-autonomous functions:

#### Take Control method: 
- The user to take control of the end effectors movements without any input from the autonomous functions. This method also allows 
- The user can pause the robot by putting the robot into teleoperation mode and providing no gamepad input.
- This is useful for user providing time to think about the robots path and actions.

#### Meshed method:
- The user when applies input the end effector is teleoperated, when stops the autonomy resumes
- Additional features are added to this method, which allows smooth transition from autonomy to teleoperation that helps user to more easily making adjustments to the end effector’s path.

#### Cone method:
- This method is based on the ”Meshed” method, but it limits the distance that the user can displace the end effector from the autonomous path proportionally. 
- The user here is provided with less control when the end effector is near the object, this is assumed to reduce the amount of unwanted collisions with the objects being manipulated.

## Package:
The pacakge is in following format: 
```
baxter robot teleoperation functions                               
├── cups                       # urdf files for the simulation setup
│── ebolabot                   # the baxter robot simulation  
│── src 
|      |── image processing    # It consists of teleoperating, autonomous and semi-autonomous functions with opencv bridge to detect to auruco markers.
|──  grasp.py                  # function to grasp the objects
```



## ROS Packages for TRINA Software (a.k.a. EbolaBot)

ROS Dependencies to operate TRINA Software stack.
Most requirements are included as git submodules, where as ebolabot and a few future additions liev here. (This is sunject to change, we can just add modules to our repos and keep this as a collection of repos)

Includes:
1. baxter _submodule_
2. roboteq _submodule_
3. dynamixel\_motor _submodule_		
4. vicon\_bridge _submodule_
5. hstar\_amp _submodule_
6. reflex _submodule_
7. iai_kinect _submodule_
	ROS bridge for libfreenect2, please [blacklist](https://answers.ros.org/question/54181) -or [this] (http://catkin-tools.readthedocs.io/en/latest/verbs/catkin_config.html) if you are suing catkin_tools ( strongly recommended)- if you did not complete this package's setup process.
8. ebolabot
	Ebolabot startup and launch files. Includes customized launch files from other pkgs
9. cibr\_img\_proc
	Image processing tools 
 

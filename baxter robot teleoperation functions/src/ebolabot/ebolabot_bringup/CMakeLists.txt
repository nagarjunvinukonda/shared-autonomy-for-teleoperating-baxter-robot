cmake_minimum_required(VERSION 2.8.3)
project(ebolabot_bringup)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  reflex
  reflex_msgs
  ebolabot_system_configuration
  baxter_interface
  hstar_amp
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES rrlasdlf
 CATKIN_DEPENDS std_msgs
#  DEPENDS system_lib
)


execute_process(COMMAND "/home/trevor/ros_ws/build_isolated/baxter_pykdl/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/trevor/ros_ws/build_isolated/baxter_pykdl/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

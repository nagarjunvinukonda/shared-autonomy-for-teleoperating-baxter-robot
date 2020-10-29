# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dynamixel_controllers: 0 messages, 9 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dynamixel_controllers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" ""
)

get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_custom_target(_dynamixel_controllers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_controllers" "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_cpp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
)

### Generating Module File
_generate_module_cpp(dynamixel_controllers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dynamixel_controllers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dynamixel_controllers_generate_messages dynamixel_controllers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_cpp _dynamixel_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_controllers_gencpp)
add_dependencies(dynamixel_controllers_gencpp dynamixel_controllers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_controllers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_eus(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
)

### Generating Module File
_generate_module_eus(dynamixel_controllers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dynamixel_controllers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dynamixel_controllers_generate_messages dynamixel_controllers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_eus _dynamixel_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_controllers_geneus)
add_dependencies(dynamixel_controllers_geneus dynamixel_controllers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_controllers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_lisp(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
)

### Generating Module File
_generate_module_lisp(dynamixel_controllers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dynamixel_controllers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dynamixel_controllers_generate_messages dynamixel_controllers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_lisp _dynamixel_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_controllers_genlisp)
add_dependencies(dynamixel_controllers_genlisp dynamixel_controllers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_controllers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_nodejs(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
)

### Generating Module File
_generate_module_nodejs(dynamixel_controllers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dynamixel_controllers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dynamixel_controllers_generate_messages dynamixel_controllers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_nodejs _dynamixel_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_controllers_gennodejs)
add_dependencies(dynamixel_controllers_gennodejs dynamixel_controllers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_controllers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)
_generate_srv_py(dynamixel_controllers
  "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
)

### Generating Module File
_generate_module_py(dynamixel_controllers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dynamixel_controllers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dynamixel_controllers_generate_messages dynamixel_controllers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceMargin.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetTorqueLimit.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StopController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetCompliancePunch.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/RestartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetComplianceSlope.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/StartController.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_controllers/srv/SetSpeed.srv" NAME_WE)
add_dependencies(dynamixel_controllers_generate_messages_py _dynamixel_controllers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_controllers_genpy)
add_dependencies(dynamixel_controllers_genpy dynamixel_controllers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_controllers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_controllers/.+/__init__.pyc?$"
  )
endif()

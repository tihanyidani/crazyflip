# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "crazyflie: 10 messages, 0 services")

set(MSG_I_FLAGS "-Icrazyflie:/home/tihanyid/crazyflip_ws/src/crazyflie/msg;-Icrazyflie:/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(crazyflie_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" "crazyflie/PlanFeedback:crazyflie/PlanActionFeedback:std_msgs/Header:actionlib_msgs/GoalStatus:crazyflie/PlanActionResult:crazyflie/Command:crazyflie/PlanGoal:actionlib_msgs/GoalID:crazyflie/PlanResult:crazyflie/PlanActionGoal"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" "actionlib_msgs/GoalID:crazyflie/Command:crazyflie/PlanGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" "actionlib_msgs/GoalID:crazyflie/PlanResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" "actionlib_msgs/GoalID:crazyflie/PlanFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" "crazyflie/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_custom_target(_crazyflie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie" "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)
_generate_msg_cpp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
)

### Generating Services

### Generating Module File
_generate_module_cpp(crazyflie
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(crazyflie_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(crazyflie_generate_messages crazyflie_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_cpp _crazyflie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_gencpp)
add_dependencies(crazyflie_gencpp crazyflie_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)
_generate_msg_eus(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
)

### Generating Services

### Generating Module File
_generate_module_eus(crazyflie
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(crazyflie_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(crazyflie_generate_messages crazyflie_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_eus _crazyflie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_geneus)
add_dependencies(crazyflie_geneus crazyflie_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)
_generate_msg_lisp(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
)

### Generating Services

### Generating Module File
_generate_module_lisp(crazyflie
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(crazyflie_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(crazyflie_generate_messages crazyflie_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_lisp _crazyflie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_genlisp)
add_dependencies(crazyflie_genlisp crazyflie_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)
_generate_msg_nodejs(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
)

### Generating Services

### Generating Module File
_generate_module_nodejs(crazyflie
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(crazyflie_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(crazyflie_generate_messages crazyflie_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_nodejs _crazyflie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_gennodejs)
add_dependencies(crazyflie_gennodejs crazyflie_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)
_generate_msg_py(crazyflie
  "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
)

### Generating Services

### Generating Module File
_generate_module_py(crazyflie
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(crazyflie_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(crazyflie_generate_messages crazyflie_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg" NAME_WE)
add_dependencies(crazyflie_generate_messages_py _crazyflie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_genpy)
add_dependencies(crazyflie_genpy crazyflie_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(crazyflie_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(crazyflie_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(crazyflie_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(crazyflie_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(crazyflie_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(crazyflie_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(crazyflie_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(crazyflie_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(crazyflie_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(crazyflie_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(crazyflie_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(crazyflie_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(crazyflie_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(crazyflie_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(crazyflie_generate_messages_py geometry_msgs_generate_messages_py)
endif()

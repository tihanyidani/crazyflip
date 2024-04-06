# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pilot: 15 messages, 0 services")

set(MSG_I_FLAGS "-Ipilot:/home/tihanyid/crazyflip_ws/src/pilot/msg;-Ipilot:/home/tihanyid/crazyflip_ws/devel/share/pilot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pilot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" "pilot/Plan:pilot/Box:pilot/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" "pilot/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" "pilot/MotorInput:pilot/Measurement:pilot/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" ""
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" "pilot/SimulateFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:pilot/SimulationParameters:std_msgs/Header:pilot/SimulationResults:pilot/SimulateActionFeedback:pilot/Plan:pilot/Box:pilot/SimulateResult:pilot/SimulateGoal:pilot/SimulateActionResult:pilot/SimulateActionGoal:pilot/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" "actionlib_msgs/GoalID:pilot/SimulationParameters:std_msgs/Header:pilot/Plan:pilot/Box:pilot/SimulateGoal:pilot/Command"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:pilot/SimulationResults:pilot/SimulateResult"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:pilot/SimulateFeedback"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" "pilot/Command:pilot/Plan:pilot/Box:pilot/SimulationParameters"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" "pilot/SimulationResults"
)

get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_custom_target(_pilot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pilot" "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)
_generate_msg_cpp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
)

### Generating Services

### Generating Module File
_generate_module_cpp(pilot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pilot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pilot_generate_messages pilot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_cpp _pilot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pilot_gencpp)
add_dependencies(pilot_gencpp pilot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pilot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)
_generate_msg_eus(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
)

### Generating Services

### Generating Module File
_generate_module_eus(pilot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pilot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pilot_generate_messages pilot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_eus _pilot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pilot_geneus)
add_dependencies(pilot_geneus pilot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pilot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)
_generate_msg_lisp(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
)

### Generating Services

### Generating Module File
_generate_module_lisp(pilot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pilot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pilot_generate_messages pilot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_lisp _pilot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pilot_genlisp)
add_dependencies(pilot_genlisp pilot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pilot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)
_generate_msg_nodejs(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pilot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pilot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pilot_generate_messages pilot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_nodejs _pilot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pilot_gennodejs)
add_dependencies(pilot_gennodejs pilot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pilot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg;/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)
_generate_msg_py(pilot
  "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
)

### Generating Services

### Generating Module File
_generate_module_py(pilot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pilot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pilot_generate_messages pilot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationParameters.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Plan.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Command.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Box.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/SimulationResults.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Log.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/Measurement.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/pilot/msg/MotorInput.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateAction.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateActionFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateGoal.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateResult.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/devel/share/pilot/msg/SimulateFeedback.msg" NAME_WE)
add_dependencies(pilot_generate_messages_py _pilot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pilot_genpy)
add_dependencies(pilot_genpy pilot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pilot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pilot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pilot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pilot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pilot_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pilot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pilot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pilot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pilot_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pilot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pilot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pilot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pilot_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pilot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pilot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pilot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pilot_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pilot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pilot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pilot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pilot_generate_messages_py actionlib_msgs_generate_messages_py)
endif()

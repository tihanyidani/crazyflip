# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "orchestrator: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iorchestrator:/home/tihanyid/crazyflip_ws/src/orchestrator/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(orchestrator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_custom_target(_orchestrator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "orchestrator" "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(orchestrator
  "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/orchestrator
)

### Generating Services

### Generating Module File
_generate_module_cpp(orchestrator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/orchestrator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(orchestrator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(orchestrator_generate_messages orchestrator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_dependencies(orchestrator_generate_messages_cpp _orchestrator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(orchestrator_gencpp)
add_dependencies(orchestrator_gencpp orchestrator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS orchestrator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(orchestrator
  "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/orchestrator
)

### Generating Services

### Generating Module File
_generate_module_eus(orchestrator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/orchestrator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(orchestrator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(orchestrator_generate_messages orchestrator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_dependencies(orchestrator_generate_messages_eus _orchestrator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(orchestrator_geneus)
add_dependencies(orchestrator_geneus orchestrator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS orchestrator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(orchestrator
  "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/orchestrator
)

### Generating Services

### Generating Module File
_generate_module_lisp(orchestrator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/orchestrator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(orchestrator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(orchestrator_generate_messages orchestrator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_dependencies(orchestrator_generate_messages_lisp _orchestrator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(orchestrator_genlisp)
add_dependencies(orchestrator_genlisp orchestrator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS orchestrator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(orchestrator
  "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/orchestrator
)

### Generating Services

### Generating Module File
_generate_module_nodejs(orchestrator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/orchestrator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(orchestrator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(orchestrator_generate_messages orchestrator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_dependencies(orchestrator_generate_messages_nodejs _orchestrator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(orchestrator_gennodejs)
add_dependencies(orchestrator_gennodejs orchestrator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS orchestrator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(orchestrator
  "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/orchestrator
)

### Generating Services

### Generating Module File
_generate_module_py(orchestrator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/orchestrator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(orchestrator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(orchestrator_generate_messages orchestrator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tihanyid/crazyflip_ws/src/orchestrator/msg/EpochParameters.msg" NAME_WE)
add_dependencies(orchestrator_generate_messages_py _orchestrator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(orchestrator_genpy)
add_dependencies(orchestrator_genpy orchestrator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS orchestrator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/orchestrator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/orchestrator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(orchestrator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(orchestrator_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/orchestrator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/orchestrator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(orchestrator_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(orchestrator_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/orchestrator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/orchestrator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(orchestrator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(orchestrator_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/orchestrator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/orchestrator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(orchestrator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(orchestrator_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/orchestrator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/orchestrator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/orchestrator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(orchestrator_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(orchestrator_generate_messages_py geometry_msgs_generate_messages_py)
endif()

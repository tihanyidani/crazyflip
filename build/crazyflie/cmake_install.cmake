# Install script for directory: /home/tihanyid/crazyflip_ws/src/crazyflie

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tihanyid/crazyflip_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/msg" TYPE FILE FILES
    "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Measurement.msg"
    "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Command.msg"
    "/home/tihanyid/crazyflip_ws/src/crazyflie/msg/Input.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/action" TYPE FILE FILES "/home/tihanyid/crazyflip_ws/src/crazyflie/action/Plan.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/msg" TYPE FILE FILES
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanAction.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionGoal.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionResult.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanActionFeedback.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanGoal.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanResult.msg"
    "/home/tihanyid/crazyflip_ws/devel/share/crazyflie/msg/PlanFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/cmake" TYPE FILE FILES "/home/tihanyid/crazyflip_ws/build/crazyflie/catkin_generated/installspace/crazyflie-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tihanyid/crazyflip_ws/devel/include/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tihanyid/crazyflip_ws/devel/share/roseus/ros/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tihanyid/crazyflip_ws/devel/share/common-lisp/ros/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tihanyid/crazyflip_ws/devel/share/gennodejs/ros/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/tihanyid/crazyflip_ws/devel/lib/python3/dist-packages/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/tihanyid/crazyflip_ws/devel/lib/python3/dist-packages/crazyflie")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tihanyid/crazyflip_ws/build/crazyflie/catkin_generated/installspace/crazyflie.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/cmake" TYPE FILE FILES "/home/tihanyid/crazyflip_ws/build/crazyflie/catkin_generated/installspace/crazyflie-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie/cmake" TYPE FILE FILES
    "/home/tihanyid/crazyflip_ws/build/crazyflie/catkin_generated/installspace/crazyflieConfig.cmake"
    "/home/tihanyid/crazyflip_ws/build/crazyflie/catkin_generated/installspace/crazyflieConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie" TYPE FILE FILES "/home/tihanyid/crazyflip_ws/src/crazyflie/package.xml")
endif()


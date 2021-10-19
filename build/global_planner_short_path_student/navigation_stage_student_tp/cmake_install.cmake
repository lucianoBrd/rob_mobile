# Install script for directory: /fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/src/global_planner_short_path_student/navigation_stage_student_tp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/build/global_planner_short_path_student/navigation_stage_student_tp/catkin_generated/installspace/navigation_stage_student_tp.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage_student_tp/cmake" TYPE FILE FILES
    "/fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/build/global_planner_short_path_student/navigation_stage_student_tp/catkin_generated/installspace/navigation_stage_student_tpConfig.cmake"
    "/fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/build/global_planner_short_path_student/navigation_stage_student_tp/catkin_generated/installspace/navigation_stage_student_tpConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage_student_tp" TYPE FILE FILES "/fs03/share/users/aykel.cheniour/home/Bureau/ROB mob/catkin_ws/src/global_planner_short_path_student/navigation_stage_student_tp/package.xml")
endif()


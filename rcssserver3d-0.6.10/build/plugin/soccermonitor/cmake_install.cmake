# Install script for directory: /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/plugin/soccermonitor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d" TYPE MODULE FILES "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/plugin/soccermonitor/soccermonitor.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rcssserver3d/soccermonitor.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rcssserver3d/soccermonitor" TYPE FILE FILES
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/plugin/soccermonitor/soccermonitor.h"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/plugin/soccermonitor/soccerrender.h"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/plugin/soccermonitor/soccerinput.h"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/plugin/soccermonitor/soccerinputlogplayer.h"
    )
endif()


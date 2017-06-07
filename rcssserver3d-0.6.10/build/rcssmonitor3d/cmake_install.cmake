# Install script for directory: /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/rcssmonitor3d

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d"
         RPATH "/usr/local/lib/simspark:/usr/local/lib/rcssserver3d")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/rcssmonitor3d/rcssmonitor3d")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d"
         OLD_RPATH "/usr/local/lib/simspark::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib/simspark:/usr/local/lib/rcssserver3d")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rcssmonitor3d")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rcssserver3d" TYPE FILE FILES
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/rcssmonitor3d/soccersim-monitor.rb"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/rcssmonitor3d/rcssmonitor3d.rb"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/rcssmonitor3d/soccerbindings.rb"
    )
endif()


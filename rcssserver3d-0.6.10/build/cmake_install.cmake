# Install script for directory: /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/rcssserver3d" TYPE FILE FILES
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/AUTHORS"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/ChangeLog"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/COPYING"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/NEWS"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/README"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/THANKS"
    "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/TODO"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rcssserver3d" TYPE FILE FILES "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/rcssserver3d_config.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/data/cmake_install.cmake")
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/doc/cmake_install.cmake")
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/plugin/cmake_install.cmake")
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/rcssagent3d/cmake_install.cmake")
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/rcssmonitor3d/cmake_install.cmake")
  include("/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/rcssserver3d/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/rcssserver3d-0.6.10/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

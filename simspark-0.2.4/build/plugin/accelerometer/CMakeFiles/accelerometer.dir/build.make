# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build

# Include any dependencies generated for this target.
include plugin/accelerometer/CMakeFiles/accelerometer.dir/depend.make

# Include the progress variables for this target.
include plugin/accelerometer/CMakeFiles/accelerometer.dir/progress.make

# Include the compile flags for this target's objects.
include plugin/accelerometer/CMakeFiles/accelerometer.dir/flags.make

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o: plugin/accelerometer/CMakeFiles/accelerometer.dir/flags.make
plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o: ../plugin/accelerometer/export.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/accelerometer.dir/export.cpp.o -c /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/export.cpp

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/accelerometer.dir/export.cpp.i"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/export.cpp > CMakeFiles/accelerometer.dir/export.cpp.i

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/accelerometer.dir/export.cpp.s"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/export.cpp -o CMakeFiles/accelerometer.dir/export.cpp.s

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.requires:

.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.requires

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.provides: plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.requires
	$(MAKE) -f plugin/accelerometer/CMakeFiles/accelerometer.dir/build.make plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.provides.build
.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.provides

plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.provides.build: plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o


plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o: plugin/accelerometer/CMakeFiles/accelerometer.dir/flags.make
plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o: ../plugin/accelerometer/accelerometer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/accelerometer.dir/accelerometer.cpp.o -c /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer.cpp

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/accelerometer.dir/accelerometer.cpp.i"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer.cpp > CMakeFiles/accelerometer.dir/accelerometer.cpp.i

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/accelerometer.dir/accelerometer.cpp.s"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer.cpp -o CMakeFiles/accelerometer.dir/accelerometer.cpp.s

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.requires:

.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.requires

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.provides: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.requires
	$(MAKE) -f plugin/accelerometer/CMakeFiles/accelerometer.dir/build.make plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.provides.build
.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.provides

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.provides.build: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o


plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o: plugin/accelerometer/CMakeFiles/accelerometer.dir/flags.make
plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o: ../plugin/accelerometer/accelerometer_c.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o -c /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer_c.cpp

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/accelerometer.dir/accelerometer_c.cpp.i"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer_c.cpp > CMakeFiles/accelerometer.dir/accelerometer_c.cpp.i

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/accelerometer.dir/accelerometer_c.cpp.s"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer/accelerometer_c.cpp -o CMakeFiles/accelerometer.dir/accelerometer_c.cpp.s

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.requires:

.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.requires

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.provides: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.requires
	$(MAKE) -f plugin/accelerometer/CMakeFiles/accelerometer.dir/build.make plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.provides.build
.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.provides

plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.provides.build: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o


# Object files for target accelerometer
accelerometer_OBJECTS = \
"CMakeFiles/accelerometer.dir/export.cpp.o" \
"CMakeFiles/accelerometer.dir/accelerometer.cpp.o" \
"CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o"

# External object files for target accelerometer
accelerometer_EXTERNAL_OBJECTS =

plugin/accelerometer/accelerometer.so: plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o
plugin/accelerometer/accelerometer.so: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o
plugin/accelerometer/accelerometer.so: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o
plugin/accelerometer/accelerometer.so: plugin/accelerometer/CMakeFiles/accelerometer.dir/build.make
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
plugin/accelerometer/accelerometer.so: /usr/lib/x86_64-linux-gnu/libpthread.so
plugin/accelerometer/accelerometer.so: plugin/accelerometer/CMakeFiles/accelerometer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared module accelerometer.so"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/accelerometer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugin/accelerometer/CMakeFiles/accelerometer.dir/build: plugin/accelerometer/accelerometer.so

.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/build

plugin/accelerometer/CMakeFiles/accelerometer.dir/requires: plugin/accelerometer/CMakeFiles/accelerometer.dir/export.cpp.o.requires
plugin/accelerometer/CMakeFiles/accelerometer.dir/requires: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer.cpp.o.requires
plugin/accelerometer/CMakeFiles/accelerometer.dir/requires: plugin/accelerometer/CMakeFiles/accelerometer.dir/accelerometer_c.cpp.o.requires

.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/requires

plugin/accelerometer/CMakeFiles/accelerometer.dir/clean:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer && $(CMAKE_COMMAND) -P CMakeFiles/accelerometer.dir/cmake_clean.cmake
.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/clean

plugin/accelerometer/CMakeFiles/accelerometer.dir/depend:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4 /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/plugin/accelerometer /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/plugin/accelerometer/CMakeFiles/accelerometer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugin/accelerometer/CMakeFiles/accelerometer.dir/depend

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
include test/coretest/CMakeFiles/coretest.dir/depend.make

# Include the progress variables for this target.
include test/coretest/CMakeFiles/coretest.dir/progress.make

# Include the compile flags for this target's objects.
include test/coretest/CMakeFiles/coretest.dir/flags.make

test/coretest/CMakeFiles/coretest.dir/main.cpp.o: test/coretest/CMakeFiles/coretest.dir/flags.make
test/coretest/CMakeFiles/coretest.dir/main.cpp.o: ../test/coretest/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/coretest/CMakeFiles/coretest.dir/main.cpp.o"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/coretest.dir/main.cpp.o -c /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/test/coretest/main.cpp

test/coretest/CMakeFiles/coretest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coretest.dir/main.cpp.i"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/test/coretest/main.cpp > CMakeFiles/coretest.dir/main.cpp.i

test/coretest/CMakeFiles/coretest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coretest.dir/main.cpp.s"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/test/coretest/main.cpp -o CMakeFiles/coretest.dir/main.cpp.s

test/coretest/CMakeFiles/coretest.dir/main.cpp.o.requires:

.PHONY : test/coretest/CMakeFiles/coretest.dir/main.cpp.o.requires

test/coretest/CMakeFiles/coretest.dir/main.cpp.o.provides: test/coretest/CMakeFiles/coretest.dir/main.cpp.o.requires
	$(MAKE) -f test/coretest/CMakeFiles/coretest.dir/build.make test/coretest/CMakeFiles/coretest.dir/main.cpp.o.provides.build
.PHONY : test/coretest/CMakeFiles/coretest.dir/main.cpp.o.provides

test/coretest/CMakeFiles/coretest.dir/main.cpp.o.provides.build: test/coretest/CMakeFiles/coretest.dir/main.cpp.o


# Object files for target coretest
coretest_OBJECTS = \
"CMakeFiles/coretest.dir/main.cpp.o"

# External object files for target coretest
coretest_EXTERNAL_OBJECTS =

test/coretest/coretest: test/coretest/CMakeFiles/coretest.dir/main.cpp.o
test/coretest/coretest: test/coretest/CMakeFiles/coretest.dir/build.make
test/coretest/coretest: lib/oxygen/liboxygen.so.6.0.1
test/coretest/coretest: lib/zeitgeist/libzeitgeist.so.3.1.4
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libruby-2.3.so
test/coretest/coretest: lib/salt/libsalt.so.1.0.0
test/coretest/coretest: utility/libobj/liblibobject.a
test/coretest/coretest: utility/rcssnet/librcssnet3D.so.0.1.0
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_system.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_regex.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
test/coretest/coretest: /usr/lib/x86_64-linux-gnu/libpthread.so
test/coretest/coretest: test/coretest/CMakeFiles/coretest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable coretest"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coretest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/coretest/CMakeFiles/coretest.dir/build: test/coretest/coretest

.PHONY : test/coretest/CMakeFiles/coretest.dir/build

test/coretest/CMakeFiles/coretest.dir/requires: test/coretest/CMakeFiles/coretest.dir/main.cpp.o.requires

.PHONY : test/coretest/CMakeFiles/coretest.dir/requires

test/coretest/CMakeFiles/coretest.dir/clean:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest && $(CMAKE_COMMAND) -P CMakeFiles/coretest.dir/cmake_clean.cmake
.PHONY : test/coretest/CMakeFiles/coretest.dir/clean

test/coretest/CMakeFiles/coretest.dir/depend:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4 /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/test/coretest /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/test/coretest/CMakeFiles/coretest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/coretest/CMakeFiles/coretest.dir/depend


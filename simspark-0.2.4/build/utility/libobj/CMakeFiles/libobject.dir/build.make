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
include utility/libobj/CMakeFiles/libobject.dir/depend.make

# Include the progress variables for this target.
include utility/libobj/CMakeFiles/libobject.dir/progress.make

# Include the compile flags for this target's objects.
include utility/libobj/CMakeFiles/libobject.dir/flags.make

utility/libobj/CMakeFiles/libobject.dir/libobj.c.o: utility/libobj/CMakeFiles/libobject.dir/flags.make
utility/libobj/CMakeFiles/libobject.dir/libobj.c.o: ../utility/libobj/libobj.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object utility/libobj/CMakeFiles/libobject.dir/libobj.c.o"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libobject.dir/libobj.c.o   -c /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/utility/libobj/libobj.c

utility/libobj/CMakeFiles/libobject.dir/libobj.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libobject.dir/libobj.c.i"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/utility/libobj/libobj.c > CMakeFiles/libobject.dir/libobj.c.i

utility/libobj/CMakeFiles/libobject.dir/libobj.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libobject.dir/libobj.c.s"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/utility/libobj/libobj.c -o CMakeFiles/libobject.dir/libobj.c.s

utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.requires:

.PHONY : utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.requires

utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.provides: utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.requires
	$(MAKE) -f utility/libobj/CMakeFiles/libobject.dir/build.make utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.provides.build
.PHONY : utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.provides

utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.provides.build: utility/libobj/CMakeFiles/libobject.dir/libobj.c.o


# Object files for target libobject
libobject_OBJECTS = \
"CMakeFiles/libobject.dir/libobj.c.o"

# External object files for target libobject
libobject_EXTERNAL_OBJECTS =

utility/libobj/liblibobject.a: utility/libobj/CMakeFiles/libobject.dir/libobj.c.o
utility/libobj/liblibobject.a: utility/libobj/CMakeFiles/libobject.dir/build.make
utility/libobj/liblibobject.a: utility/libobj/CMakeFiles/libobject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblibobject.a"
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && $(CMAKE_COMMAND) -P CMakeFiles/libobject.dir/cmake_clean_target.cmake
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libobject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utility/libobj/CMakeFiles/libobject.dir/build: utility/libobj/liblibobject.a

.PHONY : utility/libobj/CMakeFiles/libobject.dir/build

utility/libobj/CMakeFiles/libobject.dir/requires: utility/libobj/CMakeFiles/libobject.dir/libobj.c.o.requires

.PHONY : utility/libobj/CMakeFiles/libobject.dir/requires

utility/libobj/CMakeFiles/libobject.dir/clean:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj && $(CMAKE_COMMAND) -P CMakeFiles/libobject.dir/cmake_clean.cmake
.PHONY : utility/libobj/CMakeFiles/libobject.dir/clean

utility/libobj/CMakeFiles/libobject.dir/depend:
	cd /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4 /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/utility/libobj /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj /home/client1/桌面/robocup3D标准平台安装/robocup3D/robocup3D/simspark-0.2.4/build/utility/libobj/CMakeFiles/libobject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utility/libobj/CMakeFiles/libobject.dir/depend


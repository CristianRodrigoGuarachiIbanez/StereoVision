# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/175/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/175/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cristian/CLionProjects/stereo_matching

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cristian/CLionProjects/stereo_matching/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/stereo.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/stereo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stereo.dir/flags.make

CMakeFiles/stereo.dir/ssd_stereo.cpp.o: CMakeFiles/stereo.dir/flags.make
CMakeFiles/stereo.dir/ssd_stereo.cpp.o: ../ssd_stereo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cristian/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stereo.dir/ssd_stereo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stereo.dir/ssd_stereo.cpp.o -c /home/cristian/CLionProjects/stereo_matching/ssd_stereo.cpp

CMakeFiles/stereo.dir/ssd_stereo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo.dir/ssd_stereo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cristian/CLionProjects/stereo_matching/ssd_stereo.cpp > CMakeFiles/stereo.dir/ssd_stereo.cpp.i

CMakeFiles/stereo.dir/ssd_stereo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo.dir/ssd_stereo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cristian/CLionProjects/stereo_matching/ssd_stereo.cpp -o CMakeFiles/stereo.dir/ssd_stereo.cpp.s

CMakeFiles/stereo.dir/main.cpp.o: CMakeFiles/stereo.dir/flags.make
CMakeFiles/stereo.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cristian/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/stereo.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stereo.dir/main.cpp.o -c /home/cristian/CLionProjects/stereo_matching/main.cpp

CMakeFiles/stereo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stereo.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cristian/CLionProjects/stereo_matching/main.cpp > CMakeFiles/stereo.dir/main.cpp.i

CMakeFiles/stereo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stereo.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cristian/CLionProjects/stereo_matching/main.cpp -o CMakeFiles/stereo.dir/main.cpp.s

# Object files for target stereo
stereo_OBJECTS = \
"CMakeFiles/stereo.dir/ssd_stereo.cpp.o" \
"CMakeFiles/stereo.dir/main.cpp.o"

# External object files for target stereo
stereo_EXTERNAL_OBJECTS =

stereo: CMakeFiles/stereo.dir/ssd_stereo.cpp.o
stereo: CMakeFiles/stereo.dir/main.cpp.o
stereo: CMakeFiles/stereo.dir/build.make
stereo: CMakeFiles/stereo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cristian/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable stereo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stereo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stereo.dir/build: stereo
.PHONY : CMakeFiles/stereo.dir/build

CMakeFiles/stereo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stereo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stereo.dir/clean

CMakeFiles/stereo.dir/depend:
	cd /home/cristian/CLionProjects/stereo_matching/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cristian/CLionProjects/stereo_matching /home/cristian/CLionProjects/stereo_matching /home/cristian/CLionProjects/stereo_matching/cmake-build-debug /home/cristian/CLionProjects/stereo_matching/cmake-build-debug /home/cristian/CLionProjects/stereo_matching/cmake-build-debug/CMakeFiles/stereo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stereo.dir/depend


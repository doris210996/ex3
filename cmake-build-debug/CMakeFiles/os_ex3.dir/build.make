# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/APP/jetbrains/clion/2019.2.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /usr/local/APP/jetbrains/clion/2019.2.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cs/usr/doronbruder/CLionProjects/os_ex3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/os_ex3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/os_ex3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/os_ex3.dir/flags.make

CMakeFiles/os_ex3.dir/main.cpp.o: CMakeFiles/os_ex3.dir/flags.make
CMakeFiles/os_ex3.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/os_ex3.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/os_ex3.dir/main.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/main.cpp

CMakeFiles/os_ex3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/os_ex3.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/main.cpp > CMakeFiles/os_ex3.dir/main.cpp.i

CMakeFiles/os_ex3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/os_ex3.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/main.cpp -o CMakeFiles/os_ex3.dir/main.cpp.s

# Object files for target os_ex3
os_ex3_OBJECTS = \
"CMakeFiles/os_ex3.dir/main.cpp.o"

# External object files for target os_ex3
os_ex3_EXTERNAL_OBJECTS =

os_ex3: CMakeFiles/os_ex3.dir/main.cpp.o
os_ex3: CMakeFiles/os_ex3.dir/build.make
os_ex3: CMakeFiles/os_ex3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable os_ex3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/os_ex3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/os_ex3.dir/build: os_ex3

.PHONY : CMakeFiles/os_ex3.dir/build

CMakeFiles/os_ex3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/os_ex3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/os_ex3.dir/clean

CMakeFiles/os_ex3.dir/depend:
	cd /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cs/usr/doronbruder/CLionProjects/os_ex3 /cs/usr/doronbruder/CLionProjects/os_ex3 /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles/os_ex3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/os_ex3.dir/depend


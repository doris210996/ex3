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
include CMakeFiles/MapReduceFramework.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MapReduceFramework.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MapReduceFramework.dir/flags.make

CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o: ../MapReduceFramework.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/MapReduceFramework.cpp

CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/MapReduceFramework.cpp > CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.i

CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/MapReduceFramework.cpp -o CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.s

CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o: ../SampleClient/SampleClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/SampleClient.cpp

CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/SampleClient.cpp > CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.i

CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/SampleClient.cpp -o CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.s

CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o: ../SampleClient/FileWordCounter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/FileWordCounter.cpp

CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/FileWordCounter.cpp > CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.i

CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/SampleClient/FileWordCounter.cpp -o CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.s

CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o: ../Barrier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier.cpp

CMakeFiles/MapReduceFramework.dir/Barrier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/Barrier.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier.cpp > CMakeFiles/MapReduceFramework.dir/Barrier.cpp.i

CMakeFiles/MapReduceFramework.dir/Barrier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/Barrier.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier.cpp -o CMakeFiles/MapReduceFramework.dir/Barrier.cpp.s

CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o: ../Barrier/Barrier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/Barrier.cpp

CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/Barrier.cpp > CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.i

CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/Barrier.cpp -o CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.s

CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o: ../Barrier/barrierdemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/barrierdemo.cpp

CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/barrierdemo.cpp > CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.i

CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/Barrier/barrierdemo.cpp -o CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.s

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o: ../Atomic/atomicdemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo.cpp

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo.cpp > CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.i

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo.cpp -o CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.s

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o: CMakeFiles/MapReduceFramework.dir/flags.make
CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o: ../Atomic/atomicdemo_multivar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o -c /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo_multivar.cpp

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo_multivar.cpp > CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.i

CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/doronbruder/CLionProjects/os_ex3/Atomic/atomicdemo_multivar.cpp -o CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.s

# Object files for target MapReduceFramework
MapReduceFramework_OBJECTS = \
"CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o" \
"CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o"

# External object files for target MapReduceFramework
MapReduceFramework_EXTERNAL_OBJECTS =

libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/MapReduceFramework.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/SampleClient/SampleClient.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/SampleClient/FileWordCounter.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/Barrier.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/Barrier/Barrier.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/Barrier/barrierdemo.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/Atomic/atomicdemo_multivar.cpp.o
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/build.make
libMapReduceFramework.a: CMakeFiles/MapReduceFramework.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libMapReduceFramework.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MapReduceFramework.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MapReduceFramework.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MapReduceFramework.dir/build: libMapReduceFramework.a

.PHONY : CMakeFiles/MapReduceFramework.dir/build

CMakeFiles/MapReduceFramework.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MapReduceFramework.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MapReduceFramework.dir/clean

CMakeFiles/MapReduceFramework.dir/depend:
	cd /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cs/usr/doronbruder/CLionProjects/os_ex3 /cs/usr/doronbruder/CLionProjects/os_ex3 /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug /cs/usr/doronbruder/CLionProjects/os_ex3/cmake-build-debug/CMakeFiles/MapReduceFramework.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MapReduceFramework.dir/depend


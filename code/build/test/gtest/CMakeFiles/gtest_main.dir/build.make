# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build

# Include any dependencies generated for this target.
include test/gtest/CMakeFiles/gtest_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/gtest/CMakeFiles/gtest_main.dir/compiler_depend.make

# Include the progress variables for this target.
include test/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/gtest/CMakeFiles/gtest_main.dir/flags.make

test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: test/gtest/CMakeFiles/gtest_main.dir/flags.make
test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/gtest/src/gtest_main.cc
test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: test/gtest/CMakeFiles/gtest_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -MF CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.d -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/gtest/src/gtest_main.cc

test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/gtest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/gtest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

test/gtest/libgtest_main.dylib: test/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
test/gtest/libgtest_main.dylib: test/gtest/CMakeFiles/gtest_main.dir/build.make
test/gtest/libgtest_main.dylib: test/gtest/libgtest.dylib
test/gtest/libgtest_main.dylib: test/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgtest_main.dylib"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/gtest/CMakeFiles/gtest_main.dir/build: test/gtest/libgtest_main.dylib
.PHONY : test/gtest/CMakeFiles/gtest_main.dir/build

test/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : test/gtest/CMakeFiles/gtest_main.dir/clean

test/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0 /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/gtest /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/gtest/CMakeFiles/gtest_main.dir/depend


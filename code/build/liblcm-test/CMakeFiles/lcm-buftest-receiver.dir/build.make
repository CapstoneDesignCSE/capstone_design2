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
include liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/compiler_depend.make

# Include the progress variables for this target.
include liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/progress.make

# Include the compile flags for this target's objects.
include liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/flags.make

liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o: liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/flags.make
liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/buftest-receiver.c
liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o: liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o -MF CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o.d -o CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/buftest-receiver.c

liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/buftest-receiver.c > CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.i

liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/buftest-receiver.c -o CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.s

# Object files for target lcm-buftest-receiver
lcm__buftest__receiver_OBJECTS = \
"CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o"

# External object files for target lcm-buftest-receiver
lcm__buftest__receiver_EXTERNAL_OBJECTS =

liblcm-test/lcm-buftest-receiver: liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/buftest-receiver.c.o
liblcm-test/lcm-buftest-receiver: liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/build.make
liblcm-test/lcm-buftest-receiver: lcm/liblcm.1.5.0.dylib
liblcm-test/lcm-buftest-receiver: /opt/homebrew/lib/libglib-2.0.dylib
liblcm-test/lcm-buftest-receiver: liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lcm-buftest-receiver"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lcm-buftest-receiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/build: liblcm-test/lcm-buftest-receiver
.PHONY : liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/build

liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/clean:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test && $(CMAKE_COMMAND) -P CMakeFiles/lcm-buftest-receiver.dir/cmake_clean.cmake
.PHONY : liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/clean

liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/depend:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0 /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : liblcm-test/CMakeFiles/lcm-buftest-receiver.dir/depend

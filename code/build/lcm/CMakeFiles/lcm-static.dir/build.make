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
include lcm/CMakeFiles/lcm-static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lcm/CMakeFiles/lcm-static.dir/compiler_depend.make

# Include the progress variables for this target.
include lcm/CMakeFiles/lcm-static.dir/progress.make

# Include the compile flags for this target's objects.
include lcm/CMakeFiles/lcm-static.dir/flags.make

lcm/CMakeFiles/lcm-static.dir/eventlog.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/eventlog.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/eventlog.c
lcm/CMakeFiles/lcm-static.dir/eventlog.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lcm/CMakeFiles/lcm-static.dir/eventlog.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/eventlog.c.o -MF CMakeFiles/lcm-static.dir/eventlog.c.o.d -o CMakeFiles/lcm-static.dir/eventlog.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/eventlog.c

lcm/CMakeFiles/lcm-static.dir/eventlog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/eventlog.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/eventlog.c > CMakeFiles/lcm-static.dir/eventlog.c.i

lcm/CMakeFiles/lcm-static.dir/eventlog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/eventlog.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/eventlog.c -o CMakeFiles/lcm-static.dir/eventlog.c.s

lcm/CMakeFiles/lcm-static.dir/lcm.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm.c
lcm/CMakeFiles/lcm-static.dir/lcm.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm.c.o -MF CMakeFiles/lcm-static.dir/lcm.c.o.d -o CMakeFiles/lcm-static.dir/lcm.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm.c

lcm/CMakeFiles/lcm-static.dir/lcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm.c > CMakeFiles/lcm-static.dir/lcm.c.i

lcm/CMakeFiles/lcm-static.dir/lcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm.c -o CMakeFiles/lcm-static.dir/lcm.c.s

lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_file.c
lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o -MF CMakeFiles/lcm-static.dir/lcm_file.c.o.d -o CMakeFiles/lcm-static.dir/lcm_file.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_file.c

lcm/CMakeFiles/lcm-static.dir/lcm_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm_file.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_file.c > CMakeFiles/lcm-static.dir/lcm_file.c.i

lcm/CMakeFiles/lcm-static.dir/lcm_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm_file.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_file.c -o CMakeFiles/lcm-static.dir/lcm_file.c.s

lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_memq.c
lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o -MF CMakeFiles/lcm-static.dir/lcm_memq.c.o.d -o CMakeFiles/lcm-static.dir/lcm_memq.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_memq.c

lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm_memq.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_memq.c > CMakeFiles/lcm-static.dir/lcm_memq.c.i

lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm_memq.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_memq.c -o CMakeFiles/lcm-static.dir/lcm_memq.c.s

lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_mpudpm.c
lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o -MF CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o.d -o CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_mpudpm.c

lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm_mpudpm.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_mpudpm.c > CMakeFiles/lcm-static.dir/lcm_mpudpm.c.i

lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm_mpudpm.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_mpudpm.c -o CMakeFiles/lcm-static.dir/lcm_mpudpm.c.s

lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_tcpq.c
lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o -MF CMakeFiles/lcm-static.dir/lcm_tcpq.c.o.d -o CMakeFiles/lcm-static.dir/lcm_tcpq.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_tcpq.c

lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm_tcpq.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_tcpq.c > CMakeFiles/lcm-static.dir/lcm_tcpq.c.i

lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm_tcpq.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_tcpq.c -o CMakeFiles/lcm-static.dir/lcm_tcpq.c.s

lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_udpm.c
lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o -MF CMakeFiles/lcm-static.dir/lcm_udpm.c.o.d -o CMakeFiles/lcm-static.dir/lcm_udpm.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_udpm.c

lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcm_udpm.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_udpm.c > CMakeFiles/lcm-static.dir/lcm_udpm.c.i

lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcm_udpm.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcm_udpm.c -o CMakeFiles/lcm-static.dir/lcm_udpm.c.s

lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/ringbuffer.c
lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o -MF CMakeFiles/lcm-static.dir/ringbuffer.c.o.d -o CMakeFiles/lcm-static.dir/ringbuffer.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/ringbuffer.c

lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/ringbuffer.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/ringbuffer.c > CMakeFiles/lcm-static.dir/ringbuffer.c.i

lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/ringbuffer.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/ringbuffer.c -o CMakeFiles/lcm-static.dir/ringbuffer.c.s

lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/udpm_util.c
lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o -MF CMakeFiles/lcm-static.dir/udpm_util.c.o.d -o CMakeFiles/lcm-static.dir/udpm_util.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/udpm_util.c

lcm/CMakeFiles/lcm-static.dir/udpm_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/udpm_util.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/udpm_util.c > CMakeFiles/lcm-static.dir/udpm_util.c.i

lcm/CMakeFiles/lcm-static.dir/udpm_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/udpm_util.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/udpm_util.c -o CMakeFiles/lcm-static.dir/udpm_util.c.s

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_port_map_update_t.c
lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o -MF CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o.d -o CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_port_map_update_t.c

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_port_map_update_t.c > CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.i

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_port_map_update_t.c -o CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.s

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o: lcm/CMakeFiles/lcm-static.dir/flags.make
lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_to_port_t.c
lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o: lcm/CMakeFiles/lcm-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o -MF CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o.d -o CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_to_port_t.c

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_to_port_t.c > CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.i

lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm/lcmtypes/channel_to_port_t.c -o CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.s

# Object files for target lcm-static
lcm__static_OBJECTS = \
"CMakeFiles/lcm-static.dir/eventlog.c.o" \
"CMakeFiles/lcm-static.dir/lcm.c.o" \
"CMakeFiles/lcm-static.dir/lcm_file.c.o" \
"CMakeFiles/lcm-static.dir/lcm_memq.c.o" \
"CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o" \
"CMakeFiles/lcm-static.dir/lcm_tcpq.c.o" \
"CMakeFiles/lcm-static.dir/lcm_udpm.c.o" \
"CMakeFiles/lcm-static.dir/ringbuffer.c.o" \
"CMakeFiles/lcm-static.dir/udpm_util.c.o" \
"CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o" \
"CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o"

# External object files for target lcm-static
lcm__static_EXTERNAL_OBJECTS =

lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/eventlog.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm_file.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm_memq.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm_mpudpm.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm_tcpq.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcm_udpm.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/ringbuffer.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/udpm_util.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_port_map_update_t.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/lcmtypes/channel_to_port_t.c.o
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/build.make
lcm/liblcm.a: lcm/CMakeFiles/lcm-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C static library liblcm.a"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && $(CMAKE_COMMAND) -P CMakeFiles/lcm-static.dir/cmake_clean_target.cmake
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lcm-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lcm/CMakeFiles/lcm-static.dir/build: lcm/liblcm.a
.PHONY : lcm/CMakeFiles/lcm-static.dir/build

lcm/CMakeFiles/lcm-static.dir/clean:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm && $(CMAKE_COMMAND) -P CMakeFiles/lcm-static.dir/cmake_clean.cmake
.PHONY : lcm/CMakeFiles/lcm-static.dir/clean

lcm/CMakeFiles/lcm-static.dir/depend:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0 /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/CMakeFiles/lcm-static.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lcm/CMakeFiles/lcm-static.dir/depend


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
include lcm-python/CMakeFiles/lcm-python.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lcm-python/CMakeFiles/lcm-python.dir/compiler_depend.make

# Include the progress variables for this target.
include lcm-python/CMakeFiles/lcm-python.dir/progress.make

# Include the compile flags for this target's objects.
include lcm-python/CMakeFiles/lcm-python.dir/flags.make

lcm-python/CMakeFiles/lcm-python.dir/module.c.o: lcm-python/CMakeFiles/lcm-python.dir/flags.make
lcm-python/CMakeFiles/lcm-python.dir/module.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/module.c
lcm-python/CMakeFiles/lcm-python.dir/module.c.o: lcm-python/CMakeFiles/lcm-python.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lcm-python/CMakeFiles/lcm-python.dir/module.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm-python/CMakeFiles/lcm-python.dir/module.c.o -MF CMakeFiles/lcm-python.dir/module.c.o.d -o CMakeFiles/lcm-python.dir/module.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/module.c

lcm-python/CMakeFiles/lcm-python.dir/module.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-python.dir/module.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/module.c > CMakeFiles/lcm-python.dir/module.c.i

lcm-python/CMakeFiles/lcm-python.dir/module.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-python.dir/module.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/module.c -o CMakeFiles/lcm-python.dir/module.c.s

lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o: lcm-python/CMakeFiles/lcm-python.dir/flags.make
lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pyeventlog.c
lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o: lcm-python/CMakeFiles/lcm-python.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o -MF CMakeFiles/lcm-python.dir/pyeventlog.c.o.d -o CMakeFiles/lcm-python.dir/pyeventlog.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pyeventlog.c

lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-python.dir/pyeventlog.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pyeventlog.c > CMakeFiles/lcm-python.dir/pyeventlog.c.i

lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-python.dir/pyeventlog.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pyeventlog.c -o CMakeFiles/lcm-python.dir/pyeventlog.c.s

lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o: lcm-python/CMakeFiles/lcm-python.dir/flags.make
lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm.c
lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o: lcm-python/CMakeFiles/lcm-python.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o -MF CMakeFiles/lcm-python.dir/pylcm.c.o.d -o CMakeFiles/lcm-python.dir/pylcm.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm.c

lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-python.dir/pylcm.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm.c > CMakeFiles/lcm-python.dir/pylcm.c.i

lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-python.dir/pylcm.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm.c -o CMakeFiles/lcm-python.dir/pylcm.c.s

lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o: lcm-python/CMakeFiles/lcm-python.dir/flags.make
lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm_subscription.c
lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o: lcm-python/CMakeFiles/lcm-python.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o -MF CMakeFiles/lcm-python.dir/pylcm_subscription.c.o.d -o CMakeFiles/lcm-python.dir/pylcm_subscription.c.o -c /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm_subscription.c

lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lcm-python.dir/pylcm_subscription.c.i"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm_subscription.c > CMakeFiles/lcm-python.dir/pylcm_subscription.c.i

lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lcm-python.dir/pylcm_subscription.c.s"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python/pylcm_subscription.c -o CMakeFiles/lcm-python.dir/pylcm_subscription.c.s

# Object files for target lcm-python
lcm__python_OBJECTS = \
"CMakeFiles/lcm-python.dir/module.c.o" \
"CMakeFiles/lcm-python.dir/pyeventlog.c.o" \
"CMakeFiles/lcm-python.dir/pylcm.c.o" \
"CMakeFiles/lcm-python.dir/pylcm_subscription.c.o"

# External object files for target lcm-python
lcm__python_EXTERNAL_OBJECTS =

python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/module.c.o
python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/pyeventlog.c.o
python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/pylcm.c.o
python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/pylcm_subscription.c.o
python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/build.make
python/lcm/_lcm.so: lcm/liblcm.a
python/lcm/_lcm.so: /opt/homebrew/lib/libglib-2.0.dylib
python/lcm/_lcm.so: lcm-python/CMakeFiles/lcm-python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C shared module ../python/lcm/_lcm.so"
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lcm-python.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lcm-python/CMakeFiles/lcm-python.dir/build: python/lcm/_lcm.so
.PHONY : lcm-python/CMakeFiles/lcm-python.dir/build

lcm-python/CMakeFiles/lcm-python.dir/clean:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python && $(CMAKE_COMMAND) -P CMakeFiles/lcm-python.dir/cmake_clean.cmake
.PHONY : lcm-python/CMakeFiles/lcm-python.dir/clean

lcm-python/CMakeFiles/lcm-python.dir/depend:
	cd /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0 /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/lcm-python /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python/CMakeFiles/lcm-python.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lcm-python/CMakeFiles/lcm-python.dir/depend

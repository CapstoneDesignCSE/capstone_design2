# Install script for directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/lcm-sink")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-sink" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-sink")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib" "liblcm.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-sink")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-sink")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-sink.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/lcm-source")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-source" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-source")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib" "liblcm.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-source")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-source")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-source.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/lcm-tester")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-tester" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-tester")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib" "liblcm.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-tester")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-tester")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-tester.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/lcm-example")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-example" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-example")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib" "liblcm.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-example")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-example")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-example.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/lcm-logfilter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-logfilter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-logfilter")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib" "liblcm.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-logfilter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lcm-logfilter")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/CMakeFiles/lcm-logfilter.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/lcm-example.1"
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/lcm-sink.1"
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/lcm-source.1"
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/liblcm-test/lcm-tester.1"
    )
endif()


# Install script for directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake/lcmTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake/lcmTargets.cmake"
         "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles/Export/26cea5c1743c01e916e530a81508b7bc/lcmTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake/lcmTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake/lcmTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake" TYPE FILE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles/Export/26cea5c1743c01e916e530a81508b7bc/lcmTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake" TYPE FILE FILES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/CMakeFiles/Export/26cea5c1743c01e916e530a81508b7bc/lcmTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lcm/cmake" TYPE FILE FILES
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcmConfig.cmake"
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcmConfigVersion.cmake"
    "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcmUtilities.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcmgen/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-logger/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/liblcm-test/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-python/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/docs/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-lua/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/m4macros/cmake_install.cmake")
  include("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-pkgconfig/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

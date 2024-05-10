# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.0 required")
endif()
if(CMAKE_VERSION VERSION_LESS "3.0.0")
   message(FATAL_ERROR "CMake >= 3.0.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 3.0.0...3.27)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS lcm-coretypes lcm-static lcm lcm-gen)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Create imported target lcm-coretypes
add_library(lcm-coretypes INTERFACE IMPORTED)

set_target_properties(lcm-coretypes PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0"
)

# Create imported target lcm-static
add_library(lcm-static STATIC IMPORTED)

set_target_properties(lcm-static PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "LCM_STATIC"
  INTERFACE_INCLUDE_DIRECTORIES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:GLib2::glib>"
)

# Create imported target lcm
add_library(lcm SHARED IMPORTED)

set_target_properties(lcm PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm"
)

# Create imported target lcm-gen
add_executable(lcm-gen IMPORTED)

# Import target "lcm-static" for configuration ""
set_property(TARGET lcm-static APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(lcm-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.a"
  )

# Import target "lcm" for configuration ""
set_property(TARGET lcm APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(lcm PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.5.0.dylib"
  IMPORTED_SONAME_NOCONFIG "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm/liblcm.1.dylib"
  )

# Import target "lcm-gen" for configuration ""
set_property(TARGET lcm-gen APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(lcm-gen PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcmgen/lcm-gen"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
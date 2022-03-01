## Setup minimum required version for CMake
cmake_minimum_required(VERSION 3.15)

project(Test.Project CXX)

## Set C++ standard/compile-time options
add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_17)

add_subdirectory(src)

option(ENABLE_TEST    "Set to ON to enable tests"   OFF)
option(ENABLE_SAMPLES "Set to ON to enable samples" OFF)

if (ENABLE_TEST)
    add_subdirectory(tests)
endif()

if (ENABLE_SAMPLES)
    add_subdirectory(samples)
endif()
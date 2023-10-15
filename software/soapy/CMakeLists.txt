########################################################################
# Project setup -- only needed if device support is a stand-alone build
# We recommend that the support module be built in-tree with the driver.
########################################################################
cmake_minimum_required(VERSION 2.8.12)
project(SoapyIcyRadio CXX)

#select the release build type by default to get optimization flags
if(NOT CMAKE_BUILD_TYPE)
   set(CMAKE_BUILD_TYPE "Release")
   message(STATUS "Build type not specified: defaulting to release.")
endif(NOT CMAKE_BUILD_TYPE)
set(CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE} CACHE STRING "")

########################################################################
# Header and library resources needed to communicate with the device.
# These may be found within the build tree or in an external project.
########################################################################
file(GLOB ICYRADIO_SRCS
     "src/include/*.hpp"
     "src/*.cpp"
)
list(APPEND ICYRADIO_INCLUDE_DIRS "src/include/")

if(CMAKE_COMPILER_IS_GNUCXX)
    # Set C++ Standard
    include(CheckCXXCompilerFlag)
    CHECK_CXX_COMPILER_FLAG("-std=c++17" HAS_STD_CXX17)

    if(NOT HAS_STD_CXX17)
        message(WARNING "C++17 support is required to build SoapyIcyRadio")
        return()
    endif()

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

    # Include pthread
    list(APPEND ICYRADIO_LIBRARIES -pthread)

    # Disable warnings
    add_definitions(-Wno-unused-parameter)
endif(CMAKE_COMPILER_IS_GNUCXX)

########################################################################
# build the module
########################################################################
find_package(SoapySDR CONFIG)

if(NOT SoapySDR_FOUND)
    message(WARNING "SoapySDR development files not found - skipping support")
    return()
endif()

include_directories(${ICYRADIO_INCLUDE_DIRS})
SOAPY_SDR_MODULE_UTIL(
    TARGET IcyRadioSupport
    SOURCES
        ${ICYRADIO_SRCS}
    LIBRARIES
        ${ICYRADIO_LIBRARIES}
)

########################################################################
# uninstall target
########################################################################
add_custom_target(uninstall
    "${CMAKE_COMMAND}" -P "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake")
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/cmake_uninstall.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
    IMMEDIATE @ONLY)
cmake_minimum_required(VERSION 3.24)
project(boostlog)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(main)

include_directories(includes)
add_executable(main src/main.cpp src/logging.cpp)
target_link_libraries(main ${CONAN_LIBS})

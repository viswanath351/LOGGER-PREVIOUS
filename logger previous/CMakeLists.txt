cmake_minimum_required(VERSION 3.5.1)
project(logger)

set(CMAKE_CXX_STANDARD 11)
SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-std=c++11 -pthread")
find_package (Threads)
set(SOURCE_FILES main.cpp logger.cpp logger.h serve.cpp serve.h enc_dec.cpp enc_dec.h)
add_executable(logger ${SOURCE_FILES})

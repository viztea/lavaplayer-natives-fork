cmake_minimum_required(VERSION 3.0)
project(samplerate C)

if(NOT ${CMAKE_C_COMPILER_ID} STREQUAL "MSVC")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC -fdata-sections -ffunction-sections -DHAVE_CONFIG_H")
else()
	set(CMAKE_C_FLAGS_RELEASE "/MT /DHAVE_CONFIG_H")
endif()

include_directories(.)
add_library(samplerate src/samplerate.c src/src_linear.c src/src_sinc.c src/src_zoh.c)

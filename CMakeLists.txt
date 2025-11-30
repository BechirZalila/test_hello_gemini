cmake_minimum_required(VERSION 3.10)
project(hello C)

# Add an option to allow user to choose between shared and static library
# To build a static library, run: cmake -DBUILD_SHARED_LIBS=OFF .
option(BUILD_SHARED_LIBS "Build the library as a shared library." ON)

# Create the library. It will be shared or static based on BUILD_SHARED_LIBS.
add_library(hello_lib hello_lib.c)

# The 'hello' executable
add_executable(hello hello.c)

# Link the executable against the library.
target_link_libraries(hello PRIVATE hello_lib)

# Since hello.c includes hello_lib.h, we need to add the current directory
# to the include path for the 'hello' target.
target_include_directories(hello PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

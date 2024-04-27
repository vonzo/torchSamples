cmake_minimum_required(VERSION 3.16 FATAL_ERROR)
project(print_tensors)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")
set(Torch_DIR "/usr/local/lib/libtorch")

add_executable(print_tensors main.cpp)
target_link_libraries(print_tensors "${TORCH_LIBRARIES}")
set_property(TARGET print_tensors PROPERTY CXX_STANDARD 17)

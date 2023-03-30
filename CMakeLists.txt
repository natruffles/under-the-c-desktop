cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(weatherlite VERSION 1.0)
add_executable(weatherlite src/main.cpp src/Menu.cpp)
target_include_directories(weatherlite PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
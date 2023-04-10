cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(weatherlite VERSION 1.0)

find_package(CURL REQUIRED)

# set the source directory
set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../src)

add_executable(weatherlite ${SRC_DIR}/main.cpp ${SRC_DIR}/Menu.cpp)
target_include_directories(weatherlite PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(weatherlite CURL::libcurl)
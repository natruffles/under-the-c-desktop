set(BINARY ${CMAKE_PROJECT_NAME})

file(GLOB_RECURSE SOURCES LIST_DIRECTORIES true *.h *.cpp)
find_package(CURL REQUIRED)

set(SOURCES ${SOURCES})

add_executable(${BINARY}_run ${SOURCES})

add_library(${BINARY}_lib STATIC ${SOURCES})

target_include_directories(${BINARY}_run PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(${BINARY}_run CURL::libcurl)
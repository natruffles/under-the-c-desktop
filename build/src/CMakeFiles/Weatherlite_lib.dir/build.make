# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/under-the-c-desktop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/under-the-c-desktop/build

# Include any dependencies generated for this target.
include src/CMakeFiles/Weatherlite_lib.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Weatherlite_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Weatherlite_lib.dir/flags.make

src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o: src/CMakeFiles/Weatherlite_lib.dir/flags.make
src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o: ../src/Menu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o -c /workspaces/under-the-c-desktop/src/Menu.cpp

src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Weatherlite_lib.dir/Menu.cpp.i"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/under-the-c-desktop/src/Menu.cpp > CMakeFiles/Weatherlite_lib.dir/Menu.cpp.i

src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Weatherlite_lib.dir/Menu.cpp.s"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/under-the-c-desktop/src/Menu.cpp -o CMakeFiles/Weatherlite_lib.dir/Menu.cpp.s

src/CMakeFiles/Weatherlite_lib.dir/main.cpp.o: src/CMakeFiles/Weatherlite_lib.dir/flags.make
src/CMakeFiles/Weatherlite_lib.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/Weatherlite_lib.dir/main.cpp.o"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Weatherlite_lib.dir/main.cpp.o -c /workspaces/under-the-c-desktop/src/main.cpp

src/CMakeFiles/Weatherlite_lib.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Weatherlite_lib.dir/main.cpp.i"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/under-the-c-desktop/src/main.cpp > CMakeFiles/Weatherlite_lib.dir/main.cpp.i

src/CMakeFiles/Weatherlite_lib.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Weatherlite_lib.dir/main.cpp.s"
	cd /workspaces/under-the-c-desktop/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/under-the-c-desktop/src/main.cpp -o CMakeFiles/Weatherlite_lib.dir/main.cpp.s

# Object files for target Weatherlite_lib
Weatherlite_lib_OBJECTS = \
"CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o" \
"CMakeFiles/Weatherlite_lib.dir/main.cpp.o"

# External object files for target Weatherlite_lib
Weatherlite_lib_EXTERNAL_OBJECTS =

src/libWeatherlite_lib.a: src/CMakeFiles/Weatherlite_lib.dir/Menu.cpp.o
src/libWeatherlite_lib.a: src/CMakeFiles/Weatherlite_lib.dir/main.cpp.o
src/libWeatherlite_lib.a: src/CMakeFiles/Weatherlite_lib.dir/build.make
src/libWeatherlite_lib.a: src/CMakeFiles/Weatherlite_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/under-the-c-desktop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libWeatherlite_lib.a"
	cd /workspaces/under-the-c-desktop/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Weatherlite_lib.dir/cmake_clean_target.cmake
	cd /workspaces/under-the-c-desktop/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Weatherlite_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Weatherlite_lib.dir/build: src/libWeatherlite_lib.a

.PHONY : src/CMakeFiles/Weatherlite_lib.dir/build

src/CMakeFiles/Weatherlite_lib.dir/clean:
	cd /workspaces/under-the-c-desktop/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Weatherlite_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Weatherlite_lib.dir/clean

src/CMakeFiles/Weatherlite_lib.dir/depend:
	cd /workspaces/under-the-c-desktop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/under-the-c-desktop /workspaces/under-the-c-desktop/src /workspaces/under-the-c-desktop/build /workspaces/under-the-c-desktop/build/src /workspaces/under-the-c-desktop/build/src/CMakeFiles/Weatherlite_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Weatherlite_lib.dir/depend


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
CMAKE_SOURCE_DIR = /workspaces/under-the-c-desktop/curl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/under-the-c-desktop/curl

# Include any dependencies generated for this target.
include tests/libtest/CMakeFiles/lib1521.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib1521.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib1521.dir/flags.make

tests/libtest/lib1521.c: tests/libtest/mk-lib1521.pl
tests/libtest/lib1521.c: include/curl/curl.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating lib1521.c"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/perl /workspaces/under-the-c-desktop/curl/tests/libtest/mk-lib1521.pl < /workspaces/under-the-c-desktop/curl/include/curl/curl.h > lib1521.c

tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.o: tests/libtest/CMakeFiles/lib1521.dir/flags.make
tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.o: tests/libtest/lib1521.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib1521.dir/lib1521.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/lib1521.c

tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib1521.dir/lib1521.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/lib1521.c > CMakeFiles/lib1521.dir/lib1521.c.i

tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib1521.dir/lib1521.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/lib1521.c -o CMakeFiles/lib1521.dir/lib1521.c.s

tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib1521.dir/flags.make
tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o: lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o -c /workspaces/under-the-c-desktop/curl/lib/timediff.c

tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib1521.dir/__/__/lib/timediff.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/lib/timediff.c > CMakeFiles/lib1521.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib1521.dir/__/__/lib/timediff.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/lib/timediff.c -o CMakeFiles/lib1521.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib1521.dir/first.c.o: tests/libtest/CMakeFiles/lib1521.dir/flags.make
tests/libtest/CMakeFiles/lib1521.dir/first.c.o: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/libtest/CMakeFiles/lib1521.dir/first.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib1521.dir/first.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/first.c

tests/libtest/CMakeFiles/lib1521.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib1521.dir/first.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/first.c > CMakeFiles/lib1521.dir/first.c.i

tests/libtest/CMakeFiles/lib1521.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib1521.dir/first.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/first.c -o CMakeFiles/lib1521.dir/first.c.s

# Object files for target lib1521
lib1521_OBJECTS = \
"CMakeFiles/lib1521.dir/lib1521.c.o" \
"CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib1521.dir/first.c.o"

# External object files for target lib1521
lib1521_EXTERNAL_OBJECTS =

tests/libtest/lib1521: tests/libtest/CMakeFiles/lib1521.dir/lib1521.c.o
tests/libtest/lib1521: tests/libtest/CMakeFiles/lib1521.dir/__/__/lib/timediff.c.o
tests/libtest/lib1521: tests/libtest/CMakeFiles/lib1521.dir/first.c.o
tests/libtest/lib1521: tests/libtest/CMakeFiles/lib1521.dir/build.make
tests/libtest/lib1521: lib/libcurl.so.4.8.0
tests/libtest/lib1521: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib1521: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib1521: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib1521: tests/libtest/CMakeFiles/lib1521.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable lib1521"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib1521.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib1521.dir/build: tests/libtest/lib1521

.PHONY : tests/libtest/CMakeFiles/lib1521.dir/build

tests/libtest/CMakeFiles/lib1521.dir/clean:
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib1521.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib1521.dir/clean

tests/libtest/CMakeFiles/lib1521.dir/depend: tests/libtest/lib1521.c
	cd /workspaces/under-the-c-desktop/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl/tests/libtest/CMakeFiles/lib1521.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib1521.dir/depend

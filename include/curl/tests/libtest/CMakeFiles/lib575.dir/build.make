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
include tests/libtest/CMakeFiles/lib575.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib575.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib575.dir/flags.make

tests/libtest/CMakeFiles/lib575.dir/lib575.c.o: tests/libtest/CMakeFiles/lib575.dir/flags.make
tests/libtest/CMakeFiles/lib575.dir/lib575.c.o: tests/libtest/lib575.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib575.dir/lib575.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib575.dir/lib575.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/lib575.c

tests/libtest/CMakeFiles/lib575.dir/lib575.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib575.dir/lib575.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/lib575.c > CMakeFiles/lib575.dir/lib575.c.i

tests/libtest/CMakeFiles/lib575.dir/lib575.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib575.dir/lib575.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/lib575.c -o CMakeFiles/lib575.dir/lib575.c.s

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib575.dir/flags.make
tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.o: lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib575.dir/__/__/lib/timediff.c.o -c /workspaces/under-the-c-desktop/curl/lib/timediff.c

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib575.dir/__/__/lib/timediff.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/lib/timediff.c > CMakeFiles/lib575.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib575.dir/__/__/lib/timediff.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/lib/timediff.c -o CMakeFiles/lib575.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib575.dir/first.c.o: tests/libtest/CMakeFiles/lib575.dir/flags.make
tests/libtest/CMakeFiles/lib575.dir/first.c.o: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib575.dir/first.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib575.dir/first.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/first.c

tests/libtest/CMakeFiles/lib575.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib575.dir/first.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/first.c > CMakeFiles/lib575.dir/first.c.i

tests/libtest/CMakeFiles/lib575.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib575.dir/first.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/first.c -o CMakeFiles/lib575.dir/first.c.s

tests/libtest/CMakeFiles/lib575.dir/testutil.c.o: tests/libtest/CMakeFiles/lib575.dir/flags.make
tests/libtest/CMakeFiles/lib575.dir/testutil.c.o: tests/libtest/testutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/libtest/CMakeFiles/lib575.dir/testutil.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib575.dir/testutil.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/testutil.c

tests/libtest/CMakeFiles/lib575.dir/testutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib575.dir/testutil.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/testutil.c > CMakeFiles/lib575.dir/testutil.c.i

tests/libtest/CMakeFiles/lib575.dir/testutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib575.dir/testutil.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/testutil.c -o CMakeFiles/lib575.dir/testutil.c.s

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.o: tests/libtest/CMakeFiles/lib575.dir/flags.make
tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.o: lib/warnless.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib575.dir/__/__/lib/warnless.c.o -c /workspaces/under-the-c-desktop/curl/lib/warnless.c

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib575.dir/__/__/lib/warnless.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/lib/warnless.c > CMakeFiles/lib575.dir/__/__/lib/warnless.c.i

tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib575.dir/__/__/lib/warnless.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/lib/warnless.c -o CMakeFiles/lib575.dir/__/__/lib/warnless.c.s

# Object files for target lib575
lib575_OBJECTS = \
"CMakeFiles/lib575.dir/lib575.c.o" \
"CMakeFiles/lib575.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib575.dir/first.c.o" \
"CMakeFiles/lib575.dir/testutil.c.o" \
"CMakeFiles/lib575.dir/__/__/lib/warnless.c.o"

# External object files for target lib575
lib575_EXTERNAL_OBJECTS =

tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/lib575.c.o
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/__/__/lib/timediff.c.o
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/first.c.o
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/testutil.c.o
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/__/__/lib/warnless.c.o
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/build.make
tests/libtest/lib575: lib/libcurl.so.4.8.0
tests/libtest/lib575: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib575: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib575: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib575: tests/libtest/CMakeFiles/lib575.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable lib575"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib575.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib575.dir/build: tests/libtest/lib575

.PHONY : tests/libtest/CMakeFiles/lib575.dir/build

tests/libtest/CMakeFiles/lib575.dir/clean:
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib575.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib575.dir/clean

tests/libtest/CMakeFiles/lib575.dir/depend:
	cd /workspaces/under-the-c-desktop/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl/tests/libtest/CMakeFiles/lib575.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib575.dir/depend


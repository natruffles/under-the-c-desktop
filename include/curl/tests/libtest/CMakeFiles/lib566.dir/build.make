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
include tests/libtest/CMakeFiles/lib566.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib566.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib566.dir/flags.make

tests/libtest/CMakeFiles/lib566.dir/lib566.c.o: tests/libtest/CMakeFiles/lib566.dir/flags.make
tests/libtest/CMakeFiles/lib566.dir/lib566.c.o: tests/libtest/lib566.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib566.dir/lib566.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib566.dir/lib566.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/lib566.c

tests/libtest/CMakeFiles/lib566.dir/lib566.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib566.dir/lib566.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/lib566.c > CMakeFiles/lib566.dir/lib566.c.i

tests/libtest/CMakeFiles/lib566.dir/lib566.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib566.dir/lib566.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/lib566.c -o CMakeFiles/lib566.dir/lib566.c.s

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.o: tests/libtest/CMakeFiles/lib566.dir/flags.make
tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.o: lib/timediff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib566.dir/__/__/lib/timediff.c.o -c /workspaces/under-the-c-desktop/curl/lib/timediff.c

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib566.dir/__/__/lib/timediff.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/lib/timediff.c > CMakeFiles/lib566.dir/__/__/lib/timediff.c.i

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib566.dir/__/__/lib/timediff.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/lib/timediff.c -o CMakeFiles/lib566.dir/__/__/lib/timediff.c.s

tests/libtest/CMakeFiles/lib566.dir/first.c.o: tests/libtest/CMakeFiles/lib566.dir/flags.make
tests/libtest/CMakeFiles/lib566.dir/first.c.o: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib566.dir/first.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib566.dir/first.c.o -c /workspaces/under-the-c-desktop/curl/tests/libtest/first.c

tests/libtest/CMakeFiles/lib566.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib566.dir/first.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/tests/libtest/first.c > CMakeFiles/lib566.dir/first.c.i

tests/libtest/CMakeFiles/lib566.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib566.dir/first.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/tests/libtest/first.c -o CMakeFiles/lib566.dir/first.c.s

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o: tests/libtest/CMakeFiles/lib566.dir/flags.make
tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o: lib/curl_multibyte.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o -c /workspaces/under-the-c-desktop/curl/lib/curl_multibyte.c

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.i"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/under-the-c-desktop/curl/lib/curl_multibyte.c > CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.i

tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.s"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/under-the-c-desktop/curl/lib/curl_multibyte.c -o CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.s

# Object files for target lib566
lib566_OBJECTS = \
"CMakeFiles/lib566.dir/lib566.c.o" \
"CMakeFiles/lib566.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib566.dir/first.c.o" \
"CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o"

# External object files for target lib566
lib566_EXTERNAL_OBJECTS =

tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/lib566.c.o
tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/__/__/lib/timediff.c.o
tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/first.c.o
tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/__/__/lib/curl_multibyte.c.o
tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/build.make
tests/libtest/lib566: lib/libcurl.so.4.8.0
tests/libtest/lib566: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib566: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib566: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib566: tests/libtest/CMakeFiles/lib566.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/under-the-c-desktop/curl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable lib566"
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib566.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib566.dir/build: tests/libtest/lib566

.PHONY : tests/libtest/CMakeFiles/lib566.dir/build

tests/libtest/CMakeFiles/lib566.dir/clean:
	cd /workspaces/under-the-c-desktop/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib566.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib566.dir/clean

tests/libtest/CMakeFiles/lib566.dir/depend:
	cd /workspaces/under-the-c-desktop/curl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl /workspaces/under-the-c-desktop/curl/tests/libtest /workspaces/under-the-c-desktop/curl/tests/libtest/CMakeFiles/lib566.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib566.dir/depend


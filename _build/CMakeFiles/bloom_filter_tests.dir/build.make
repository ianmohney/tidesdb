# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /home/toge/.local/lib/python3.13/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/toge/.local/lib/python3.13/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/toge/src/github-tidesdb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toge/src/github-tidesdb/_build

# Include any dependencies generated for this target.
include CMakeFiles/bloom_filter_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bloom_filter_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bloom_filter_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bloom_filter_tests.dir/flags.make

CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o: CMakeFiles/bloom_filter_tests.dir/flags.make
CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o: /home/toge/src/github-tidesdb/test/bloom_filter__tests.c
CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o: CMakeFiles/bloom_filter_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/toge/src/github-tidesdb/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o -MF CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o.d -o CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o -c /home/toge/src/github-tidesdb/test/bloom_filter__tests.c

CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toge/src/github-tidesdb/test/bloom_filter__tests.c > CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.i

CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toge/src/github-tidesdb/test/bloom_filter__tests.c -o CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.s

# Object files for target bloom_filter_tests
bloom_filter_tests_OBJECTS = \
"CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o"

# External object files for target bloom_filter_tests
bloom_filter_tests_EXTERNAL_OBJECTS =

bloom_filter_tests: CMakeFiles/bloom_filter_tests.dir/test/bloom_filter__tests.c.o
bloom_filter_tests: CMakeFiles/bloom_filter_tests.dir/build.make
bloom_filter_tests: libtidesdb.so
bloom_filter_tests: CMakeFiles/bloom_filter_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/toge/src/github-tidesdb/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bloom_filter_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bloom_filter_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bloom_filter_tests.dir/build: bloom_filter_tests
.PHONY : CMakeFiles/bloom_filter_tests.dir/build

CMakeFiles/bloom_filter_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bloom_filter_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bloom_filter_tests.dir/clean

CMakeFiles/bloom_filter_tests.dir/depend:
	cd /home/toge/src/github-tidesdb/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toge/src/github-tidesdb /home/toge/src/github-tidesdb /home/toge/src/github-tidesdb/_build /home/toge/src/github-tidesdb/_build /home/toge/src/github-tidesdb/_build/CMakeFiles/bloom_filter_tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/bloom_filter_tests.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /local/.train/train/final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /local/.train/train/final/build

# Include any dependencies generated for this target.
include sorting/CMakeFiles/bubbleSort.dir/depend.make

# Include the progress variables for this target.
include sorting/CMakeFiles/bubbleSort.dir/progress.make

# Include the compile flags for this target's objects.
include sorting/CMakeFiles/bubbleSort.dir/flags.make

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o: sorting/CMakeFiles/bubbleSort.dir/flags.make
sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o: ../sorting/bubbleSort.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/final/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bubbleSort.dir/bubbleSort.c.o   -c /local/.train/train/final/sorting/bubbleSort.c

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bubbleSort.dir/bubbleSort.c.i"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/final/sorting/bubbleSort.c > CMakeFiles/bubbleSort.dir/bubbleSort.c.i

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bubbleSort.dir/bubbleSort.c.s"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/final/sorting/bubbleSort.c -o CMakeFiles/bubbleSort.dir/bubbleSort.c.s

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.requires:
.PHONY : sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.requires

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.provides: sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.requires
	$(MAKE) -f sorting/CMakeFiles/bubbleSort.dir/build.make sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.provides.build
.PHONY : sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.provides

sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.provides.build: sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o
.PHONY : sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.provides.build

# Object files for target bubbleSort
bubbleSort_OBJECTS = \
"CMakeFiles/bubbleSort.dir/bubbleSort.c.o"

# External object files for target bubbleSort
bubbleSort_EXTERNAL_OBJECTS =

bin/bubbleSort: sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o
bin/bubbleSort: lib/libutils.a
bin/bubbleSort: sorting/CMakeFiles/bubbleSort.dir/build.make
bin/bubbleSort: sorting/CMakeFiles/bubbleSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/bubbleSort"
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bubbleSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sorting/CMakeFiles/bubbleSort.dir/build: bin/bubbleSort
.PHONY : sorting/CMakeFiles/bubbleSort.dir/build

sorting/CMakeFiles/bubbleSort.dir/requires: sorting/CMakeFiles/bubbleSort.dir/bubbleSort.c.o.requires
.PHONY : sorting/CMakeFiles/bubbleSort.dir/requires

sorting/CMakeFiles/bubbleSort.dir/clean:
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -P CMakeFiles/bubbleSort.dir/cmake_clean.cmake
.PHONY : sorting/CMakeFiles/bubbleSort.dir/clean

sorting/CMakeFiles/bubbleSort.dir/depend:
	cd /local/.train/train/final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/final /local/.train/train/final/sorting /local/.train/train/final/build /local/.train/train/final/build/sorting /local/.train/train/final/build/sorting/CMakeFiles/bubbleSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sorting/CMakeFiles/bubbleSort.dir/depend


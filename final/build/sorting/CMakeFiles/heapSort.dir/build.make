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
include sorting/CMakeFiles/heapSort.dir/depend.make

# Include the progress variables for this target.
include sorting/CMakeFiles/heapSort.dir/progress.make

# Include the compile flags for this target's objects.
include sorting/CMakeFiles/heapSort.dir/flags.make

sorting/CMakeFiles/heapSort.dir/heapSort.c.o: sorting/CMakeFiles/heapSort.dir/flags.make
sorting/CMakeFiles/heapSort.dir/heapSort.c.o: ../sorting/heapSort.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/final/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sorting/CMakeFiles/heapSort.dir/heapSort.c.o"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/heapSort.dir/heapSort.c.o   -c /local/.train/train/final/sorting/heapSort.c

sorting/CMakeFiles/heapSort.dir/heapSort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heapSort.dir/heapSort.c.i"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/final/sorting/heapSort.c > CMakeFiles/heapSort.dir/heapSort.c.i

sorting/CMakeFiles/heapSort.dir/heapSort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heapSort.dir/heapSort.c.s"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/final/sorting/heapSort.c -o CMakeFiles/heapSort.dir/heapSort.c.s

sorting/CMakeFiles/heapSort.dir/heapSort.c.o.requires:
.PHONY : sorting/CMakeFiles/heapSort.dir/heapSort.c.o.requires

sorting/CMakeFiles/heapSort.dir/heapSort.c.o.provides: sorting/CMakeFiles/heapSort.dir/heapSort.c.o.requires
	$(MAKE) -f sorting/CMakeFiles/heapSort.dir/build.make sorting/CMakeFiles/heapSort.dir/heapSort.c.o.provides.build
.PHONY : sorting/CMakeFiles/heapSort.dir/heapSort.c.o.provides

sorting/CMakeFiles/heapSort.dir/heapSort.c.o.provides.build: sorting/CMakeFiles/heapSort.dir/heapSort.c.o
.PHONY : sorting/CMakeFiles/heapSort.dir/heapSort.c.o.provides.build

# Object files for target heapSort
heapSort_OBJECTS = \
"CMakeFiles/heapSort.dir/heapSort.c.o"

# External object files for target heapSort
heapSort_EXTERNAL_OBJECTS =

bin/heapSort: sorting/CMakeFiles/heapSort.dir/heapSort.c.o
bin/heapSort: lib/libutils.a
bin/heapSort: sorting/CMakeFiles/heapSort.dir/build.make
bin/heapSort: sorting/CMakeFiles/heapSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/heapSort"
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heapSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sorting/CMakeFiles/heapSort.dir/build: bin/heapSort
.PHONY : sorting/CMakeFiles/heapSort.dir/build

sorting/CMakeFiles/heapSort.dir/requires: sorting/CMakeFiles/heapSort.dir/heapSort.c.o.requires
.PHONY : sorting/CMakeFiles/heapSort.dir/requires

sorting/CMakeFiles/heapSort.dir/clean:
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -P CMakeFiles/heapSort.dir/cmake_clean.cmake
.PHONY : sorting/CMakeFiles/heapSort.dir/clean

sorting/CMakeFiles/heapSort.dir/depend:
	cd /local/.train/train/final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/final /local/.train/train/final/sorting /local/.train/train/final/build /local/.train/train/final/build/sorting /local/.train/train/final/build/sorting/CMakeFiles/heapSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sorting/CMakeFiles/heapSort.dir/depend


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
include sorting/CMakeFiles/insertSort.dir/depend.make

# Include the progress variables for this target.
include sorting/CMakeFiles/insertSort.dir/progress.make

# Include the compile flags for this target's objects.
include sorting/CMakeFiles/insertSort.dir/flags.make

sorting/CMakeFiles/insertSort.dir/insertSort.c.o: sorting/CMakeFiles/insertSort.dir/flags.make
sorting/CMakeFiles/insertSort.dir/insertSort.c.o: ../sorting/insertSort.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/final/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sorting/CMakeFiles/insertSort.dir/insertSort.c.o"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/insertSort.dir/insertSort.c.o   -c /local/.train/train/final/sorting/insertSort.c

sorting/CMakeFiles/insertSort.dir/insertSort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/insertSort.dir/insertSort.c.i"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/final/sorting/insertSort.c > CMakeFiles/insertSort.dir/insertSort.c.i

sorting/CMakeFiles/insertSort.dir/insertSort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/insertSort.dir/insertSort.c.s"
	cd /local/.train/train/final/build/sorting && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/final/sorting/insertSort.c -o CMakeFiles/insertSort.dir/insertSort.c.s

sorting/CMakeFiles/insertSort.dir/insertSort.c.o.requires:
.PHONY : sorting/CMakeFiles/insertSort.dir/insertSort.c.o.requires

sorting/CMakeFiles/insertSort.dir/insertSort.c.o.provides: sorting/CMakeFiles/insertSort.dir/insertSort.c.o.requires
	$(MAKE) -f sorting/CMakeFiles/insertSort.dir/build.make sorting/CMakeFiles/insertSort.dir/insertSort.c.o.provides.build
.PHONY : sorting/CMakeFiles/insertSort.dir/insertSort.c.o.provides

sorting/CMakeFiles/insertSort.dir/insertSort.c.o.provides.build: sorting/CMakeFiles/insertSort.dir/insertSort.c.o
.PHONY : sorting/CMakeFiles/insertSort.dir/insertSort.c.o.provides.build

# Object files for target insertSort
insertSort_OBJECTS = \
"CMakeFiles/insertSort.dir/insertSort.c.o"

# External object files for target insertSort
insertSort_EXTERNAL_OBJECTS =

bin/insertSort: sorting/CMakeFiles/insertSort.dir/insertSort.c.o
bin/insertSort: lib/libutils.a
bin/insertSort: sorting/CMakeFiles/insertSort.dir/build.make
bin/insertSort: sorting/CMakeFiles/insertSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/insertSort"
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/insertSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sorting/CMakeFiles/insertSort.dir/build: bin/insertSort
.PHONY : sorting/CMakeFiles/insertSort.dir/build

sorting/CMakeFiles/insertSort.dir/requires: sorting/CMakeFiles/insertSort.dir/insertSort.c.o.requires
.PHONY : sorting/CMakeFiles/insertSort.dir/requires

sorting/CMakeFiles/insertSort.dir/clean:
	cd /local/.train/train/final/build/sorting && $(CMAKE_COMMAND) -P CMakeFiles/insertSort.dir/cmake_clean.cmake
.PHONY : sorting/CMakeFiles/insertSort.dir/clean

sorting/CMakeFiles/insertSort.dir/depend:
	cd /local/.train/train/final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/final /local/.train/train/final/sorting /local/.train/train/final/build /local/.train/train/final/build/sorting /local/.train/train/final/build/sorting/CMakeFiles/insertSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sorting/CMakeFiles/insertSort.dir/depend


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
CMAKE_SOURCE_DIR = /local/.train/train/2016

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /local/.train/train/2016/build

# Include any dependencies generated for this target.
include basic/CMakeFiles/calculator.dir/depend.make

# Include the progress variables for this target.
include basic/CMakeFiles/calculator.dir/progress.make

# Include the compile flags for this target's objects.
include basic/CMakeFiles/calculator.dir/flags.make

basic/CMakeFiles/calculator.dir/expression.o: basic/CMakeFiles/calculator.dir/flags.make
basic/CMakeFiles/calculator.dir/expression.o: ../basic/expression.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/2016/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object basic/CMakeFiles/calculator.dir/expression.o"
	cd /local/.train/train/2016/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/calculator.dir/expression.o   -c /local/.train/train/2016/basic/expression.c

basic/CMakeFiles/calculator.dir/expression.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calculator.dir/expression.i"
	cd /local/.train/train/2016/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/2016/basic/expression.c > CMakeFiles/calculator.dir/expression.i

basic/CMakeFiles/calculator.dir/expression.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calculator.dir/expression.s"
	cd /local/.train/train/2016/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/2016/basic/expression.c -o CMakeFiles/calculator.dir/expression.s

basic/CMakeFiles/calculator.dir/expression.o.requires:
.PHONY : basic/CMakeFiles/calculator.dir/expression.o.requires

basic/CMakeFiles/calculator.dir/expression.o.provides: basic/CMakeFiles/calculator.dir/expression.o.requires
	$(MAKE) -f basic/CMakeFiles/calculator.dir/build.make basic/CMakeFiles/calculator.dir/expression.o.provides.build
.PHONY : basic/CMakeFiles/calculator.dir/expression.o.provides

basic/CMakeFiles/calculator.dir/expression.o.provides.build: basic/CMakeFiles/calculator.dir/expression.o
.PHONY : basic/CMakeFiles/calculator.dir/expression.o.provides.build

# Object files for target calculator
calculator_OBJECTS = \
"CMakeFiles/calculator.dir/expression.o"

# External object files for target calculator
calculator_EXTERNAL_OBJECTS =

bin/calculator: basic/CMakeFiles/calculator.dir/expression.o
bin/calculator: lib/libutils.a
bin/calculator: basic/CMakeFiles/calculator.dir/build.make
bin/calculator: basic/CMakeFiles/calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/calculator"
	cd /local/.train/train/2016/build/basic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
basic/CMakeFiles/calculator.dir/build: bin/calculator
.PHONY : basic/CMakeFiles/calculator.dir/build

basic/CMakeFiles/calculator.dir/requires: basic/CMakeFiles/calculator.dir/expression.o.requires
.PHONY : basic/CMakeFiles/calculator.dir/requires

basic/CMakeFiles/calculator.dir/clean:
	cd /local/.train/train/2016/build/basic && $(CMAKE_COMMAND) -P CMakeFiles/calculator.dir/cmake_clean.cmake
.PHONY : basic/CMakeFiles/calculator.dir/clean

basic/CMakeFiles/calculator.dir/depend:
	cd /local/.train/train/2016/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/2016 /local/.train/train/2016/basic /local/.train/train/2016/build /local/.train/train/2016/build/basic /local/.train/train/2016/build/basic/CMakeFiles/calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : basic/CMakeFiles/calculator.dir/depend


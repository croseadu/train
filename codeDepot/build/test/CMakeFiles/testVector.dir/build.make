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
CMAKE_SOURCE_DIR = /local/.train/train/codeDepot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /local/.train/train/codeDepot/build

# Include any dependencies generated for this target.
include test/CMakeFiles/testVector.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testVector.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testVector.dir/flags.make

test/CMakeFiles/testVector.dir/testVector.c.o: test/CMakeFiles/testVector.dir/flags.make
test/CMakeFiles/testVector.dir/testVector.c.o: ../test/testVector.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/codeDepot/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/CMakeFiles/testVector.dir/testVector.c.o"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/testVector.dir/testVector.c.o   -c /local/.train/train/codeDepot/test/testVector.c

test/CMakeFiles/testVector.dir/testVector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testVector.dir/testVector.c.i"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/codeDepot/test/testVector.c > CMakeFiles/testVector.dir/testVector.c.i

test/CMakeFiles/testVector.dir/testVector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testVector.dir/testVector.c.s"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/codeDepot/test/testVector.c -o CMakeFiles/testVector.dir/testVector.c.s

test/CMakeFiles/testVector.dir/testVector.c.o.requires:
.PHONY : test/CMakeFiles/testVector.dir/testVector.c.o.requires

test/CMakeFiles/testVector.dir/testVector.c.o.provides: test/CMakeFiles/testVector.dir/testVector.c.o.requires
	$(MAKE) -f test/CMakeFiles/testVector.dir/build.make test/CMakeFiles/testVector.dir/testVector.c.o.provides.build
.PHONY : test/CMakeFiles/testVector.dir/testVector.c.o.provides

test/CMakeFiles/testVector.dir/testVector.c.o.provides.build: test/CMakeFiles/testVector.dir/testVector.c.o
.PHONY : test/CMakeFiles/testVector.dir/testVector.c.o.provides.build

# Object files for target testVector
testVector_OBJECTS = \
"CMakeFiles/testVector.dir/testVector.c.o"

# External object files for target testVector
testVector_EXTERNAL_OBJECTS =

bin/testVector: test/CMakeFiles/testVector.dir/testVector.c.o
bin/testVector: lib/libutils.a
bin/testVector: test/CMakeFiles/testVector.dir/build.make
bin/testVector: test/CMakeFiles/testVector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/testVector"
	cd /local/.train/train/codeDepot/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testVector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testVector.dir/build: bin/testVector
.PHONY : test/CMakeFiles/testVector.dir/build

test/CMakeFiles/testVector.dir/requires: test/CMakeFiles/testVector.dir/testVector.c.o.requires
.PHONY : test/CMakeFiles/testVector.dir/requires

test/CMakeFiles/testVector.dir/clean:
	cd /local/.train/train/codeDepot/build/test && $(CMAKE_COMMAND) -P CMakeFiles/testVector.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/testVector.dir/clean

test/CMakeFiles/testVector.dir/depend:
	cd /local/.train/train/codeDepot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/codeDepot /local/.train/train/codeDepot/test /local/.train/train/codeDepot/build /local/.train/train/codeDepot/build/test /local/.train/train/codeDepot/build/test/CMakeFiles/testVector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/testVector.dir/depend


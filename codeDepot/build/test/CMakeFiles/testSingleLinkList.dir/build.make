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
include test/CMakeFiles/testSingleLinkList.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testSingleLinkList.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testSingleLinkList.dir/flags.make

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o: test/CMakeFiles/testSingleLinkList.dir/flags.make
test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o: ../test/testSingleLinkList.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/codeDepot/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o   -c /local/.train/train/codeDepot/test/testSingleLinkList.c

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.i"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/codeDepot/test/testSingleLinkList.c > CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.i

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.s"
	cd /local/.train/train/codeDepot/build/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/codeDepot/test/testSingleLinkList.c -o CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.s

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.requires:
.PHONY : test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.requires

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.provides: test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.requires
	$(MAKE) -f test/CMakeFiles/testSingleLinkList.dir/build.make test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.provides.build
.PHONY : test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.provides

test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.provides.build: test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o
.PHONY : test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.provides.build

# Object files for target testSingleLinkList
testSingleLinkList_OBJECTS = \
"CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o"

# External object files for target testSingleLinkList
testSingleLinkList_EXTERNAL_OBJECTS =

bin/testSingleLinkList: test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o
bin/testSingleLinkList: lib/libutils.a
bin/testSingleLinkList: test/CMakeFiles/testSingleLinkList.dir/build.make
bin/testSingleLinkList: test/CMakeFiles/testSingleLinkList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/testSingleLinkList"
	cd /local/.train/train/codeDepot/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSingleLinkList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testSingleLinkList.dir/build: bin/testSingleLinkList
.PHONY : test/CMakeFiles/testSingleLinkList.dir/build

test/CMakeFiles/testSingleLinkList.dir/requires: test/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.c.o.requires
.PHONY : test/CMakeFiles/testSingleLinkList.dir/requires

test/CMakeFiles/testSingleLinkList.dir/clean:
	cd /local/.train/train/codeDepot/build/test && $(CMAKE_COMMAND) -P CMakeFiles/testSingleLinkList.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/testSingleLinkList.dir/clean

test/CMakeFiles/testSingleLinkList.dir/depend:
	cd /local/.train/train/codeDepot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/codeDepot /local/.train/train/codeDepot/test /local/.train/train/codeDepot/build /local/.train/train/codeDepot/build/test /local/.train/train/codeDepot/build/test/CMakeFiles/testSingleLinkList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/testSingleLinkList.dir/depend


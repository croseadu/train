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
include test/singleLinkList/CMakeFiles/testSingleLinkList.dir/depend.make

# Include the progress variables for this target.
include test/singleLinkList/CMakeFiles/testSingleLinkList.dir/progress.make

# Include the compile flags for this target's objects.
include test/singleLinkList/CMakeFiles/testSingleLinkList.dir/flags.make

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/flags.make
test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o: ../test/singleLinkList/testSingleLinkList.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/2016/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o"
	cd /local/.train/train/2016/build/test/singleLinkList && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o   -c /local/.train/train/2016/test/singleLinkList/testSingleLinkList.c

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testSingleLinkList.dir/testSingleLinkList.i"
	cd /local/.train/train/2016/build/test/singleLinkList && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/2016/test/singleLinkList/testSingleLinkList.c > CMakeFiles/testSingleLinkList.dir/testSingleLinkList.i

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testSingleLinkList.dir/testSingleLinkList.s"
	cd /local/.train/train/2016/build/test/singleLinkList && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/2016/test/singleLinkList/testSingleLinkList.c -o CMakeFiles/testSingleLinkList.dir/testSingleLinkList.s

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.requires:
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.requires

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.provides: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.requires
	$(MAKE) -f test/singleLinkList/CMakeFiles/testSingleLinkList.dir/build.make test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.provides.build
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.provides

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.provides.build: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.provides.build

# Object files for target testSingleLinkList
testSingleLinkList_OBJECTS = \
"CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o"

# External object files for target testSingleLinkList
testSingleLinkList_EXTERNAL_OBJECTS =

bin/testSingleLinkList: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o
bin/testSingleLinkList: lib/libutils.a
bin/testSingleLinkList: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/build.make
bin/testSingleLinkList: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/testSingleLinkList"
	cd /local/.train/train/2016/build/test/singleLinkList && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSingleLinkList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/singleLinkList/CMakeFiles/testSingleLinkList.dir/build: bin/testSingleLinkList
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/build

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/requires: test/singleLinkList/CMakeFiles/testSingleLinkList.dir/testSingleLinkList.o.requires
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/requires

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/clean:
	cd /local/.train/train/2016/build/test/singleLinkList && $(CMAKE_COMMAND) -P CMakeFiles/testSingleLinkList.dir/cmake_clean.cmake
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/clean

test/singleLinkList/CMakeFiles/testSingleLinkList.dir/depend:
	cd /local/.train/train/2016/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/2016 /local/.train/train/2016/test/singleLinkList /local/.train/train/2016/build /local/.train/train/2016/build/test/singleLinkList /local/.train/train/2016/build/test/singleLinkList/CMakeFiles/testSingleLinkList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/singleLinkList/CMakeFiles/testSingleLinkList.dir/depend


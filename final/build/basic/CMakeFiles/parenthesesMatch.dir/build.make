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
include basic/CMakeFiles/parenthesesMatch.dir/depend.make

# Include the progress variables for this target.
include basic/CMakeFiles/parenthesesMatch.dir/progress.make

# Include the compile flags for this target's objects.
include basic/CMakeFiles/parenthesesMatch.dir/flags.make

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o: basic/CMakeFiles/parenthesesMatch.dir/flags.make
basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o: ../basic/parenthesesMatching.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/final/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o   -c /local/.train/train/final/basic/parenthesesMatching.c

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.i"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/final/basic/parenthesesMatching.c > CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.i

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.s"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/final/basic/parenthesesMatching.c -o CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.s

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.requires:
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.requires

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.provides: basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.requires
	$(MAKE) -f basic/CMakeFiles/parenthesesMatch.dir/build.make basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.provides.build
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.provides

basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.provides.build: basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.provides.build

# Object files for target parenthesesMatch
parenthesesMatch_OBJECTS = \
"CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o"

# External object files for target parenthesesMatch
parenthesesMatch_EXTERNAL_OBJECTS =

bin/parenthesesMatch: basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o
bin/parenthesesMatch: lib/libutils.a
bin/parenthesesMatch: basic/CMakeFiles/parenthesesMatch.dir/build.make
bin/parenthesesMatch: basic/CMakeFiles/parenthesesMatch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/parenthesesMatch"
	cd /local/.train/train/final/build/basic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parenthesesMatch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
basic/CMakeFiles/parenthesesMatch.dir/build: bin/parenthesesMatch
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/build

basic/CMakeFiles/parenthesesMatch.dir/requires: basic/CMakeFiles/parenthesesMatch.dir/parenthesesMatching.c.o.requires
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/requires

basic/CMakeFiles/parenthesesMatch.dir/clean:
	cd /local/.train/train/final/build/basic && $(CMAKE_COMMAND) -P CMakeFiles/parenthesesMatch.dir/cmake_clean.cmake
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/clean

basic/CMakeFiles/parenthesesMatch.dir/depend:
	cd /local/.train/train/final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/final /local/.train/train/final/basic /local/.train/train/final/build /local/.train/train/final/build/basic /local/.train/train/final/build/basic/CMakeFiles/parenthesesMatch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : basic/CMakeFiles/parenthesesMatch.dir/depend


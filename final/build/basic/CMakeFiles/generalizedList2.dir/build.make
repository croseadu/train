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
include basic/CMakeFiles/generalizedList2.dir/depend.make

# Include the progress variables for this target.
include basic/CMakeFiles/generalizedList2.dir/progress.make

# Include the compile flags for this target's objects.
include basic/CMakeFiles/generalizedList2.dir/flags.make

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o: basic/CMakeFiles/generalizedList2.dir/flags.make
basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o: ../basic/generalizedList2.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/.train/train/final/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/generalizedList2.dir/generalizedList2.c.o   -c /local/.train/train/final/basic/generalizedList2.c

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/generalizedList2.dir/generalizedList2.c.i"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /local/.train/train/final/basic/generalizedList2.c > CMakeFiles/generalizedList2.dir/generalizedList2.c.i

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/generalizedList2.dir/generalizedList2.c.s"
	cd /local/.train/train/final/build/basic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /local/.train/train/final/basic/generalizedList2.c -o CMakeFiles/generalizedList2.dir/generalizedList2.c.s

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.requires:
.PHONY : basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.requires

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.provides: basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.requires
	$(MAKE) -f basic/CMakeFiles/generalizedList2.dir/build.make basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.provides.build
.PHONY : basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.provides

basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.provides.build: basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o
.PHONY : basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.provides.build

# Object files for target generalizedList2
generalizedList2_OBJECTS = \
"CMakeFiles/generalizedList2.dir/generalizedList2.c.o"

# External object files for target generalizedList2
generalizedList2_EXTERNAL_OBJECTS =

bin/generalizedList2: basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o
bin/generalizedList2: lib/libutils.a
bin/generalizedList2: basic/CMakeFiles/generalizedList2.dir/build.make
bin/generalizedList2: basic/CMakeFiles/generalizedList2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../bin/generalizedList2"
	cd /local/.train/train/final/build/basic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/generalizedList2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
basic/CMakeFiles/generalizedList2.dir/build: bin/generalizedList2
.PHONY : basic/CMakeFiles/generalizedList2.dir/build

basic/CMakeFiles/generalizedList2.dir/requires: basic/CMakeFiles/generalizedList2.dir/generalizedList2.c.o.requires
.PHONY : basic/CMakeFiles/generalizedList2.dir/requires

basic/CMakeFiles/generalizedList2.dir/clean:
	cd /local/.train/train/final/build/basic && $(CMAKE_COMMAND) -P CMakeFiles/generalizedList2.dir/cmake_clean.cmake
.PHONY : basic/CMakeFiles/generalizedList2.dir/clean

basic/CMakeFiles/generalizedList2.dir/depend:
	cd /local/.train/train/final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/.train/train/final /local/.train/train/final/basic /local/.train/train/final/build /local/.train/train/final/build/basic /local/.train/train/final/build/basic/CMakeFiles/generalizedList2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : basic/CMakeFiles/generalizedList2.dir/depend

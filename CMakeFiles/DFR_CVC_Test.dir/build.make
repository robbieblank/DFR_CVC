# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/robbieblank/Desktop/DFR/DFR_CVC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/robbieblank/Desktop/DFR/DFR_CVC

# Include any dependencies generated for this target.
include CMakeFiles/DFR_CVC_Test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DFR_CVC_Test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DFR_CVC_Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DFR_CVC_Test.dir/flags.make

CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o: CMakeFiles/DFR_CVC_Test.dir/flags.make
CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o: Testing/test_main.cpp
CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o: CMakeFiles/DFR_CVC_Test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/robbieblank/Desktop/DFR/DFR_CVC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o -MF CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o.d -o CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o -c /Users/robbieblank/Desktop/DFR/DFR_CVC/Testing/test_main.cpp

CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/robbieblank/Desktop/DFR/DFR_CVC/Testing/test_main.cpp > CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.i

CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/robbieblank/Desktop/DFR/DFR_CVC/Testing/test_main.cpp -o CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.s

# Object files for target DFR_CVC_Test
DFR_CVC_Test_OBJECTS = \
"CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o"

# External object files for target DFR_CVC_Test
DFR_CVC_Test_EXTERNAL_OBJECTS =

DFR_CVC_Test: CMakeFiles/DFR_CVC_Test.dir/Testing/test_main.cpp.o
DFR_CVC_Test: CMakeFiles/DFR_CVC_Test.dir/build.make
DFR_CVC_Test: lib/libgtest_main.a
DFR_CVC_Test: lib/libgtest.a
DFR_CVC_Test: CMakeFiles/DFR_CVC_Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/robbieblank/Desktop/DFR/DFR_CVC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DFR_CVC_Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DFR_CVC_Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DFR_CVC_Test.dir/build: DFR_CVC_Test
.PHONY : CMakeFiles/DFR_CVC_Test.dir/build

CMakeFiles/DFR_CVC_Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DFR_CVC_Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DFR_CVC_Test.dir/clean

CMakeFiles/DFR_CVC_Test.dir/depend:
	cd /Users/robbieblank/Desktop/DFR/DFR_CVC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/robbieblank/Desktop/DFR/DFR_CVC /Users/robbieblank/Desktop/DFR/DFR_CVC /Users/robbieblank/Desktop/DFR/DFR_CVC /Users/robbieblank/Desktop/DFR/DFR_CVC /Users/robbieblank/Desktop/DFR/DFR_CVC/CMakeFiles/DFR_CVC_Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DFR_CVC_Test.dir/depend


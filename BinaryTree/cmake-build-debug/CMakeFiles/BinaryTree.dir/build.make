# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Programming\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Programming\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\86185\Desktop\DataStructure\BinaryTree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BinaryTree.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BinaryTree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BinaryTree.dir/flags.make

CMakeFiles/BinaryTree.dir/main.cpp.obj: CMakeFiles/BinaryTree.dir/flags.make
CMakeFiles/BinaryTree.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BinaryTree.dir/main.cpp.obj"
	D:\Programming\C++\Dev-Cpp\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\BinaryTree.dir\main.cpp.obj -c C:\Users\86185\Desktop\DataStructure\BinaryTree\main.cpp

CMakeFiles/BinaryTree.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BinaryTree.dir/main.cpp.i"
	D:\Programming\C++\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\86185\Desktop\DataStructure\BinaryTree\main.cpp > CMakeFiles\BinaryTree.dir\main.cpp.i

CMakeFiles/BinaryTree.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BinaryTree.dir/main.cpp.s"
	D:\Programming\C++\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\86185\Desktop\DataStructure\BinaryTree\main.cpp -o CMakeFiles\BinaryTree.dir\main.cpp.s

# Object files for target BinaryTree
BinaryTree_OBJECTS = \
"CMakeFiles/BinaryTree.dir/main.cpp.obj"

# External object files for target BinaryTree
BinaryTree_EXTERNAL_OBJECTS =

BinaryTree.exe: CMakeFiles/BinaryTree.dir/main.cpp.obj
BinaryTree.exe: CMakeFiles/BinaryTree.dir/build.make
BinaryTree.exe: CMakeFiles/BinaryTree.dir/linklibs.rsp
BinaryTree.exe: CMakeFiles/BinaryTree.dir/objects1.rsp
BinaryTree.exe: CMakeFiles/BinaryTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BinaryTree.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BinaryTree.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BinaryTree.dir/build: BinaryTree.exe

.PHONY : CMakeFiles/BinaryTree.dir/build

CMakeFiles/BinaryTree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BinaryTree.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BinaryTree.dir/clean

CMakeFiles/BinaryTree.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\86185\Desktop\DataStructure\BinaryTree C:\Users\86185\Desktop\DataStructure\BinaryTree C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug C:\Users\86185\Desktop\DataStructure\BinaryTree\cmake-build-debug\CMakeFiles\BinaryTree.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BinaryTree.dir/depend


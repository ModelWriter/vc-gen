# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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
CMAKE_COMMAND = /snap/clion/92/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/92/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ferhat/git/vc-gen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ferhat/git/vc-gen/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/vcgen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vcgen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vcgen.dir/flags.make

../imp/recognizer/imp-parser.cpp: ../imp/imp-parser.yy
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][imp-parser] Building parser with bison 3.4"
	/usr/local/bin/bison --report=state --graph --warnings=all -d -o /home/ferhat/git/vc-gen/imp/recognizer/imp-parser.cpp /home/ferhat/git/vc-gen/imp/imp-parser.yy

../imp/recognizer/imp-parser.hpp: ../imp/recognizer/imp-parser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate ../imp/recognizer/imp-parser.hpp

../imp/recognizer/imp-scanner.cpp: ../imp/imp-scanner.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][imp-scanner] Building scanner with flex 2.6.4"
	cd /home/ferhat/git/vc-gen && /usr/bin/flex -o/home/ferhat/git/vc-gen/imp/recognizer/imp-scanner.cpp imp/imp-scanner.ll

../gc/recognizer/gc-parser.cpp: ../gc/gc-parser.yy
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[BISON][gc-parser] Building parser with bison 3.4"
	/usr/local/bin/bison --report=state --graph --warnings=all -d -o /home/ferhat/git/vc-gen/gc/recognizer/gc-parser.cpp /home/ferhat/git/vc-gen/gc/gc-parser.yy

../gc/recognizer/gc-parser.hpp: ../gc/recognizer/gc-parser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate ../gc/recognizer/gc-parser.hpp

../gc/recognizer/gc-scanner.cpp: ../gc/gc-scanner.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[FLEX][gc-scanner] Building scanner with flex 2.6.4"
	cd /home/ferhat/git/vc-gen && /usr/bin/flex -o/home/ferhat/git/vc-gen/gc/recognizer/gc-scanner.cpp gc/gc-scanner.ll

CMakeFiles/vcgen.dir/vcgen.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/vcgen.cpp.o: ../vcgen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/vcgen.dir/vcgen.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/vcgen.cpp.o -c /home/ferhat/git/vc-gen/vcgen.cpp

CMakeFiles/vcgen.dir/vcgen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/vcgen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/vcgen.cpp > CMakeFiles/vcgen.dir/vcgen.cpp.i

CMakeFiles/vcgen.dir/vcgen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/vcgen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/vcgen.cpp -o CMakeFiles/vcgen.dir/vcgen.cpp.s

CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o: ../imp/recognizer/imp-parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o -c /home/ferhat/git/vc-gen/imp/recognizer/imp-parser.cpp

CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/imp/recognizer/imp-parser.cpp > CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.i

CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/imp/recognizer/imp-parser.cpp -o CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.s

CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o: ../imp/recognizer/imp-scanner.cpp
CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o: ../imp/recognizer/imp-parser.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o -c /home/ferhat/git/vc-gen/imp/recognizer/imp-scanner.cpp

CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/imp/recognizer/imp-scanner.cpp > CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.i

CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/imp/recognizer/imp-scanner.cpp -o CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.s

CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o: ../imp/imp-driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o -c /home/ferhat/git/vc-gen/imp/imp-driver.cpp

CMakeFiles/vcgen.dir/imp/imp-driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/imp/imp-driver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/imp/imp-driver.cpp > CMakeFiles/vcgen.dir/imp/imp-driver.cpp.i

CMakeFiles/vcgen.dir/imp/imp-driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/imp/imp-driver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/imp/imp-driver.cpp -o CMakeFiles/vcgen.dir/imp/imp-driver.cpp.s

CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o: ../imp/ast/imp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o -c /home/ferhat/git/vc-gen/imp/ast/imp.cpp

CMakeFiles/vcgen.dir/imp/ast/imp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/imp/ast/imp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/imp/ast/imp.cpp > CMakeFiles/vcgen.dir/imp/ast/imp.cpp.i

CMakeFiles/vcgen.dir/imp/ast/imp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/imp/ast/imp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/imp/ast/imp.cpp -o CMakeFiles/vcgen.dir/imp/ast/imp.cpp.s

CMakeFiles/vcgen.dir/tools.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/tools.cpp.o: ../tools.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/vcgen.dir/tools.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/tools.cpp.o -c /home/ferhat/git/vc-gen/tools.cpp

CMakeFiles/vcgen.dir/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/tools.cpp > CMakeFiles/vcgen.dir/tools.cpp.i

CMakeFiles/vcgen.dir/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/tools.cpp -o CMakeFiles/vcgen.dir/tools.cpp.s

CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o: ../gc/recognizer/gc-parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o -c /home/ferhat/git/vc-gen/gc/recognizer/gc-parser.cpp

CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/gc/recognizer/gc-parser.cpp > CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.i

CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/gc/recognizer/gc-parser.cpp -o CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.s

CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o: ../gc/recognizer/gc-scanner.cpp
CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o: ../gc/recognizer/gc-parser.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o -c /home/ferhat/git/vc-gen/gc/recognizer/gc-scanner.cpp

CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/gc/recognizer/gc-scanner.cpp > CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.i

CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/gc/recognizer/gc-scanner.cpp -o CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.s

CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o: ../gc/gc-driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o -c /home/ferhat/git/vc-gen/gc/gc-driver.cpp

CMakeFiles/vcgen.dir/gc/gc-driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/gc/gc-driver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/gc/gc-driver.cpp > CMakeFiles/vcgen.dir/gc/gc-driver.cpp.i

CMakeFiles/vcgen.dir/gc/gc-driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/gc/gc-driver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/gc/gc-driver.cpp -o CMakeFiles/vcgen.dir/gc/gc-driver.cpp.s

CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o: ../gc/ast/gc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o -c /home/ferhat/git/vc-gen/gc/ast/gc.cpp

CMakeFiles/vcgen.dir/gc/ast/gc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/gc/ast/gc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/gc/ast/gc.cpp > CMakeFiles/vcgen.dir/gc/ast/gc.cpp.i

CMakeFiles/vcgen.dir/gc/ast/gc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/gc/ast/gc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/gc/ast/gc.cpp -o CMakeFiles/vcgen.dir/gc/ast/gc.cpp.s

CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o: CMakeFiles/vcgen.dir/flags.make
CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o: ../solver/z3-solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o -c /home/ferhat/git/vc-gen/solver/z3-solver.cpp

CMakeFiles/vcgen.dir/solver/z3-solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vcgen.dir/solver/z3-solver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ferhat/git/vc-gen/solver/z3-solver.cpp > CMakeFiles/vcgen.dir/solver/z3-solver.cpp.i

CMakeFiles/vcgen.dir/solver/z3-solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vcgen.dir/solver/z3-solver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ferhat/git/vc-gen/solver/z3-solver.cpp -o CMakeFiles/vcgen.dir/solver/z3-solver.cpp.s

# Object files for target vcgen
vcgen_OBJECTS = \
"CMakeFiles/vcgen.dir/vcgen.cpp.o" \
"CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o" \
"CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o" \
"CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o" \
"CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o" \
"CMakeFiles/vcgen.dir/tools.cpp.o" \
"CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o" \
"CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o" \
"CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o" \
"CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o" \
"CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o"

# External object files for target vcgen
vcgen_EXTERNAL_OBJECTS =

vcgen: CMakeFiles/vcgen.dir/vcgen.cpp.o
vcgen: CMakeFiles/vcgen.dir/imp/recognizer/imp-parser.cpp.o
vcgen: CMakeFiles/vcgen.dir/imp/recognizer/imp-scanner.cpp.o
vcgen: CMakeFiles/vcgen.dir/imp/imp-driver.cpp.o
vcgen: CMakeFiles/vcgen.dir/imp/ast/imp.cpp.o
vcgen: CMakeFiles/vcgen.dir/tools.cpp.o
vcgen: CMakeFiles/vcgen.dir/gc/recognizer/gc-parser.cpp.o
vcgen: CMakeFiles/vcgen.dir/gc/recognizer/gc-scanner.cpp.o
vcgen: CMakeFiles/vcgen.dir/gc/gc-driver.cpp.o
vcgen: CMakeFiles/vcgen.dir/gc/ast/gc.cpp.o
vcgen: CMakeFiles/vcgen.dir/solver/z3-solver.cpp.o
vcgen: CMakeFiles/vcgen.dir/build.make
vcgen: CMakeFiles/vcgen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable vcgen"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vcgen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vcgen.dir/build: vcgen

.PHONY : CMakeFiles/vcgen.dir/build

CMakeFiles/vcgen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vcgen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vcgen.dir/clean

CMakeFiles/vcgen.dir/depend: ../imp/recognizer/imp-parser.cpp
CMakeFiles/vcgen.dir/depend: ../imp/recognizer/imp-parser.hpp
CMakeFiles/vcgen.dir/depend: ../imp/recognizer/imp-scanner.cpp
CMakeFiles/vcgen.dir/depend: ../gc/recognizer/gc-parser.cpp
CMakeFiles/vcgen.dir/depend: ../gc/recognizer/gc-parser.hpp
CMakeFiles/vcgen.dir/depend: ../gc/recognizer/gc-scanner.cpp
	cd /home/ferhat/git/vc-gen/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ferhat/git/vc-gen /home/ferhat/git/vc-gen /home/ferhat/git/vc-gen/cmake-build-debug /home/ferhat/git/vc-gen/cmake-build-debug /home/ferhat/git/vc-gen/cmake-build-debug/CMakeFiles/vcgen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vcgen.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viswanath/Desktop/loggerN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viswanath/Desktop/loggerN

# Include any dependencies generated for this target.
include CMakeFiles/logger.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/logger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/logger.dir/flags.make

CMakeFiles/logger.dir/main.cpp.o: CMakeFiles/logger.dir/flags.make
CMakeFiles/logger.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viswanath/Desktop/loggerN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/logger.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger.dir/main.cpp.o -c /home/viswanath/Desktop/loggerN/main.cpp

CMakeFiles/logger.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viswanath/Desktop/loggerN/main.cpp > CMakeFiles/logger.dir/main.cpp.i

CMakeFiles/logger.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viswanath/Desktop/loggerN/main.cpp -o CMakeFiles/logger.dir/main.cpp.s

CMakeFiles/logger.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/logger.dir/main.cpp.o.requires

CMakeFiles/logger.dir/main.cpp.o.provides: CMakeFiles/logger.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/logger.dir/build.make CMakeFiles/logger.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/logger.dir/main.cpp.o.provides

CMakeFiles/logger.dir/main.cpp.o.provides.build: CMakeFiles/logger.dir/main.cpp.o


CMakeFiles/logger.dir/logger.cpp.o: CMakeFiles/logger.dir/flags.make
CMakeFiles/logger.dir/logger.cpp.o: logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viswanath/Desktop/loggerN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/logger.dir/logger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger.dir/logger.cpp.o -c /home/viswanath/Desktop/loggerN/logger.cpp

CMakeFiles/logger.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/logger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viswanath/Desktop/loggerN/logger.cpp > CMakeFiles/logger.dir/logger.cpp.i

CMakeFiles/logger.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/logger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viswanath/Desktop/loggerN/logger.cpp -o CMakeFiles/logger.dir/logger.cpp.s

CMakeFiles/logger.dir/logger.cpp.o.requires:

.PHONY : CMakeFiles/logger.dir/logger.cpp.o.requires

CMakeFiles/logger.dir/logger.cpp.o.provides: CMakeFiles/logger.dir/logger.cpp.o.requires
	$(MAKE) -f CMakeFiles/logger.dir/build.make CMakeFiles/logger.dir/logger.cpp.o.provides.build
.PHONY : CMakeFiles/logger.dir/logger.cpp.o.provides

CMakeFiles/logger.dir/logger.cpp.o.provides.build: CMakeFiles/logger.dir/logger.cpp.o


CMakeFiles/logger.dir/serve.cpp.o: CMakeFiles/logger.dir/flags.make
CMakeFiles/logger.dir/serve.cpp.o: serve.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viswanath/Desktop/loggerN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/logger.dir/serve.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger.dir/serve.cpp.o -c /home/viswanath/Desktop/loggerN/serve.cpp

CMakeFiles/logger.dir/serve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/serve.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viswanath/Desktop/loggerN/serve.cpp > CMakeFiles/logger.dir/serve.cpp.i

CMakeFiles/logger.dir/serve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/serve.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viswanath/Desktop/loggerN/serve.cpp -o CMakeFiles/logger.dir/serve.cpp.s

CMakeFiles/logger.dir/serve.cpp.o.requires:

.PHONY : CMakeFiles/logger.dir/serve.cpp.o.requires

CMakeFiles/logger.dir/serve.cpp.o.provides: CMakeFiles/logger.dir/serve.cpp.o.requires
	$(MAKE) -f CMakeFiles/logger.dir/build.make CMakeFiles/logger.dir/serve.cpp.o.provides.build
.PHONY : CMakeFiles/logger.dir/serve.cpp.o.provides

CMakeFiles/logger.dir/serve.cpp.o.provides.build: CMakeFiles/logger.dir/serve.cpp.o


CMakeFiles/logger.dir/enc_dec.cpp.o: CMakeFiles/logger.dir/flags.make
CMakeFiles/logger.dir/enc_dec.cpp.o: enc_dec.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viswanath/Desktop/loggerN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/logger.dir/enc_dec.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger.dir/enc_dec.cpp.o -c /home/viswanath/Desktop/loggerN/enc_dec.cpp

CMakeFiles/logger.dir/enc_dec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/enc_dec.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viswanath/Desktop/loggerN/enc_dec.cpp > CMakeFiles/logger.dir/enc_dec.cpp.i

CMakeFiles/logger.dir/enc_dec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/enc_dec.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viswanath/Desktop/loggerN/enc_dec.cpp -o CMakeFiles/logger.dir/enc_dec.cpp.s

CMakeFiles/logger.dir/enc_dec.cpp.o.requires:

.PHONY : CMakeFiles/logger.dir/enc_dec.cpp.o.requires

CMakeFiles/logger.dir/enc_dec.cpp.o.provides: CMakeFiles/logger.dir/enc_dec.cpp.o.requires
	$(MAKE) -f CMakeFiles/logger.dir/build.make CMakeFiles/logger.dir/enc_dec.cpp.o.provides.build
.PHONY : CMakeFiles/logger.dir/enc_dec.cpp.o.provides

CMakeFiles/logger.dir/enc_dec.cpp.o.provides.build: CMakeFiles/logger.dir/enc_dec.cpp.o


# Object files for target logger
logger_OBJECTS = \
"CMakeFiles/logger.dir/main.cpp.o" \
"CMakeFiles/logger.dir/logger.cpp.o" \
"CMakeFiles/logger.dir/serve.cpp.o" \
"CMakeFiles/logger.dir/enc_dec.cpp.o"

# External object files for target logger
logger_EXTERNAL_OBJECTS =

logger: CMakeFiles/logger.dir/main.cpp.o
logger: CMakeFiles/logger.dir/logger.cpp.o
logger: CMakeFiles/logger.dir/serve.cpp.o
logger: CMakeFiles/logger.dir/enc_dec.cpp.o
logger: CMakeFiles/logger.dir/build.make
logger: CMakeFiles/logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viswanath/Desktop/loggerN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable logger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/logger.dir/build: logger

.PHONY : CMakeFiles/logger.dir/build

CMakeFiles/logger.dir/requires: CMakeFiles/logger.dir/main.cpp.o.requires
CMakeFiles/logger.dir/requires: CMakeFiles/logger.dir/logger.cpp.o.requires
CMakeFiles/logger.dir/requires: CMakeFiles/logger.dir/serve.cpp.o.requires
CMakeFiles/logger.dir/requires: CMakeFiles/logger.dir/enc_dec.cpp.o.requires

.PHONY : CMakeFiles/logger.dir/requires

CMakeFiles/logger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/logger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/logger.dir/clean

CMakeFiles/logger.dir/depend:
	cd /home/viswanath/Desktop/loggerN && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viswanath/Desktop/loggerN /home/viswanath/Desktop/loggerN /home/viswanath/Desktop/loggerN /home/viswanath/Desktop/loggerN /home/viswanath/Desktop/loggerN/CMakeFiles/logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/logger.dir/depend


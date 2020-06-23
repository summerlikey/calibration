# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build

# Include any dependencies generated for this target.
include CMakeFiles/zhang.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zhang.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zhang.dir/flags.make

CMakeFiles/zhang.dir/zhang.o: CMakeFiles/zhang.dir/flags.make
CMakeFiles/zhang.dir/zhang.o: ../zhang.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/zhang.dir/zhang.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zhang.dir/zhang.o -c /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/zhang.cpp

CMakeFiles/zhang.dir/zhang.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zhang.dir/zhang.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/zhang.cpp > CMakeFiles/zhang.dir/zhang.i

CMakeFiles/zhang.dir/zhang.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zhang.dir/zhang.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/zhang.cpp -o CMakeFiles/zhang.dir/zhang.s

CMakeFiles/zhang.dir/zhang.o.requires:

.PHONY : CMakeFiles/zhang.dir/zhang.o.requires

CMakeFiles/zhang.dir/zhang.o.provides: CMakeFiles/zhang.dir/zhang.o.requires
	$(MAKE) -f CMakeFiles/zhang.dir/build.make CMakeFiles/zhang.dir/zhang.o.provides.build
.PHONY : CMakeFiles/zhang.dir/zhang.o.provides

CMakeFiles/zhang.dir/zhang.o.provides.build: CMakeFiles/zhang.dir/zhang.o


# Object files for target zhang
zhang_OBJECTS = \
"CMakeFiles/zhang.dir/zhang.o"

# External object files for target zhang
zhang_EXTERNAL_OBJECTS =

zhang: CMakeFiles/zhang.dir/zhang.o
zhang: CMakeFiles/zhang.dir/build.make
zhang: /usr/local/opencv346/lib/libopencv_dnn.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_ml.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_objdetect.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_shape.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_stitching.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_superres.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_videostab.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_calib3d.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_features2d.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_flann.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_highgui.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_photo.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_video.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_videoio.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_imgcodecs.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_imgproc.so.3.4.6
zhang: /usr/local/opencv346/lib/libopencv_core.so.3.4.6
zhang: CMakeFiles/zhang.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable zhang"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zhang.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zhang.dir/build: zhang

.PHONY : CMakeFiles/zhang.dir/build

CMakeFiles/zhang.dir/requires: CMakeFiles/zhang.dir/zhang.o.requires

.PHONY : CMakeFiles/zhang.dir/requires

CMakeFiles/zhang.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zhang.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zhang.dir/clean

CMakeFiles/zhang.dir/depend:
	cd /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build /home/ganggang/Documents/opencv-test/calibration/my_camera_calibration/build/CMakeFiles/zhang.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zhang.dir/depend

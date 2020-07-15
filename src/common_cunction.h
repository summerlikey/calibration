#ifndef MY_CAMERA_CALIBRATION_COMMON_FUNCTION_H_
#define MY_CAMERA_CALIBRATION_COMMON_FUNCTION_H_
#include <fstream>
#include <boost/filesystem.hpp>

bool existsDir(const std::string& path);
void createDirIfNotExists(const std::string& path);


#endif //MY_CAMERA_CALIBRATION_COMMON_FUNCTION_H_
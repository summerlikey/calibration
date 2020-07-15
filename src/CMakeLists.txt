# 递归获得目录下所有cpp文件
file(GLOB_RECURSE cpp_files ./*.cpp)
# 递归获得目录下所有的h文件
file(GLOB_RECURSE h_files ./*.h ./*.hpp)

# 生成动态库
add_library(myCalibration SHARED ${cpp_files})

# 将动态库和静态库的名字设置为 myCalibration
set_target_properties(myCalibration PROPERTIES OUTPUT_NAME "myCalibration")
# 设置动态库版本
set_target_properties(myCalibration PROPERTIES VERSION 1.0 SOVERSION 1)

add_executable(main main.cpp)
target_link_libraries(main ${INTERNAL_LIBS} ${THIRD_PARTY_LIBS} myCalibration)
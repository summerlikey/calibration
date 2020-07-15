cmake_minimum_required(VERSION 3.0)
project(my_calibration)

set(CMAKE_BUILD_TYPE Debug)
#c++编译标准
set(CMAKE_CXX_STANDARD 11)
#生成的动态库存储位置
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

find_package(OpenCV REQUIRED)
find_package(Boost REQUIRED COMPONENTS
		    program_options
		    filesystem
		    graph
		    regex
		    system
            unit_test_framework
            )

set(THIRD_INCLUDE_DIRS
	${OpenCV_INCLUDE_DIRS}
	${Boost_INCLUDE_DIRS}
	)
set(THIRD_PARTY_LIBS
	pthread
	${OpenCV_LIBS}
    ${Boost_LIBRARIES}
    )
        
set(INTERNAL_INCLUDE_DIRS
	${PROJECT_SOURCE_DIR}/src
    )
        
set(INTERNAL_LIBS

	)

# 链接生成的动态库目录路径，类似于搜索路径
link_directories(${PROJECT_BINARY_DIR}/lib)
#头文件目录
include_directories(${THIRD_INCLUDE_DIRS} ${INTERNAL_INCLUDE_DIRS})


enable_testing()
#############＃add_subdirectory########
add_subdirectory(test)
add_subdirectory(src)

##############install##################
#安装动态库和静态库
INSTALL(TARGETS myCalibration
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib)

#安装头文件
INSTALL(FILES ${h_files}  DESTINATION include)
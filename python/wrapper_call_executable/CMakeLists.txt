project(opencv_app)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(src_files
    src/cvtColor.cpp
)

message("use -DCV_INCLUDE_PATH to set OpenCV include path")
message("CV_INCLUDE_PATH:" ${CV_INCLUDE_PATH})

message("use -DCV_LIB_PATH to set OpenCV lib path")
message("CV_LIB_PATH:" ${CV_LIB_PATH})

include_directories(${CV_INCLUDE_PATH})
link_directories(${CV_LIB_PATH})

add_executable(opencv_app ${src_files})
target_link_libraries(opencv_app opencv_core opencv_highgui opencv_imgproc opencv_imgcodecs)

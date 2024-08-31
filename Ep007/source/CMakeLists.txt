cmake_minimum_required(VERSION 3.5)
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 11) 
project(HelloApp VERSION 0.0.1 DESCRIPTION "hello world app" LANGUAGES CXX)
##################################################################################
add_library(operations STATIC src/operations.cpp)
target_include_directories(operations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#target_compile_features(operations PUBLIC cxx_std_11)
##################################################################################
#file(GLOB_RECURSE SOURCE_FILES "src/*.cpp")
#add_executable(HelloApp main.cpp ${SOURCE_FILES})
##################################################################################
add_library(logger STATIC logger/src/log.cpp)
target_include_directories(logger PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/logger/include)
##################################################################################
add_executable(HelloApp main.cpp src/imageprocessing.cpp)
#target_compile_features(HelloApp PUBLIC cxx_std_11)
target_include_directories(HelloApp PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include) 
target_link_libraries(HelloApp PUBLIC operations logger)
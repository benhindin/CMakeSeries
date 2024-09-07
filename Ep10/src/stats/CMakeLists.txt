add_library(libstats STATIC src/stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(libstats PRIVATE libmath)
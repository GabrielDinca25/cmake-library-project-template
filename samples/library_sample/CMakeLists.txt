project(LibrarySample)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} PUBLIC TestLibrary)
target_include_directories(${PROJECT_NAME} PUBLIC TestLibrary)
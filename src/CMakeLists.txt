project(TestLibrary)

set(LIBRARY_INCLUDE_FILES "${CMAKE_SOURCE_DIR}/include/library.h")

add_library(${PROJECT_NAME} STATIC ${LIBRARY_INCLUDE_FILES} library.cpp)

target_include_directories(${PROJECT_NAME}
    PUBLIC 
        $<INSTALL_INTERFACE:include>    
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
)
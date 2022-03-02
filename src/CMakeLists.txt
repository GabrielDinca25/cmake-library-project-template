project(TestLibrary)

set(LIBRARY_INCLUDE_FILES "${CMAKE_SOURCE_DIR}/include/library.h")

file(GLOB TESTLIBRARY_SRC_FILES
     "${CMAKE_SOURCE_DIR}/include/*.h"
     "*.cpp"
)

add_library(${PROJECT_NAME} STATIC ${TESTLIBRARY_SRC_FILES})

target_include_directories(${PROJECT_NAME}
    PUBLIC 
        $<INSTALL_INTERFACE:include>    
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
)
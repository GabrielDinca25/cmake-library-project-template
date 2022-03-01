# CMake Library Project Template

This is a template Visual Studio project that uses CMake and contains a static library and executable sample project. 

A Visual Studio solution can be generated using the **generate_vs19_solution.bat**. Build files will be written to the _build folder.

To use this, you'll need at least the 3.15 version of CMake binaries located in the project's root, under a folder named cmake. 

E.g. 

```cmake-library-project-template/
|-- cmake
    |-- bin
        |-- cmake.exe
        .. //etc
    |-- share
        .. // etc
|-- include
|-- src
.. //etc
        


setlocal

set ROOT_DIR=%~dp0
set "ROOT_DIR=%ROOT_DIR:/=\%"
set "ROOT_DIR=%ROOT_DIR:\scripts\=\%"

set BUILD_DIR=%ROOT_DIR%_build
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

set SOLUTION_DIR=%BUILD_DIR%\vs19
if not exist %SOLUTION_DIR% mkdir %SOLUTION_DIR%

set CMAKE_PATH=%ROOT_DIR%cmake\bin\cmake.exe

cd %SOLUTION_DIR%
%CMAKE_PATH% -G "Visual Studio 16 2019" -A x64 %* %ROOT_DIR%
exit /b %ERRORLEVEL%
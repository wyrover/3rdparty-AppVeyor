dir /a:d /b C:\
dir /a:d /b C:\Libraries
dir /a:d /b "C:\Program Files (x86)"
dir /a:d /b "C:\Program Files"  

set ROOT_DIRECTORY=%CD%
cd %ROOT_DIRECTORY%
set BOOST_ROOT=C:\Libraries\boost_1_60_0
set BOOST_BUILD_PATH=%BOOST_ROOT%\tools\build

set PATH=C:\msys64\usr\bin;%PATH%
set PATH=%premake_dir%;%PATH%;%BOOST_BUILD_PATH%\src\engine\bin.ntx86

git submodule update --init --recursive


if [%PLATFORM%] == [x86] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x86
if [%PLATFORM%] == [x86] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN32%
if [%PLATFORM%] == [x86] set CMAKE_GENERATOR=Visual Studio 14 2015    
    


if [%PLATFORM%] == [x64] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" amd64
if [%PLATFORM%] == [x64] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN64%   
if [%PLATFORM%] == [x64] set CMAKE_GENERATOR=Visual Studio 14 2015 Win64   


wget https://github.com/mlocati/gettext-iconv-windows/releases/download/v0.19.8.1-v1.14/gettext0.19.8.1-iconv1.14-shared-32.zip
    

cmake --version
msbuild /version
which perl.exe
which 7za.exe
which 7z.exe

echo %BOOST_LIBRARYDIR%
set PATH=%QT5%\bin;%PATH%


7z.exe a -t7z -r qt_5_7_1_mingw53_32.7z C:\Qt\5.7\mingw53_32\*

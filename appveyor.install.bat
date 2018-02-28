echo dir /a:d /b C:\
dir /a:d /b C:\

echo dir /a:d /b C:\Libraries
dir /a:d /b C:\Libraries


echo dir /a:d /b "C:\Program Files (x86)"
dir /a:d /b "C:\Program Files (x86)"

echo dir /a:d /b "C:\Program Files" 
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
which 7z.exe

echo %BOOST_LIBRARYDIR%
set PATH=%QT5%\bin;%PATH%


if exist "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" ( dir "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" )
if exist "C:\Program Files\Microsoft SDKs" ( dir "C:\Program Files\Microsoft SDKs" )


rem 7z.exe a -t7z -r qt_5_7_1_msvc2015_64.7z C:\Qt\5.7\msvc2015_64\*
rem appveyor PushArtifact qt_5_7_1_msvc2015_64.7z


7z.exe a -t7z -r qt_5_7_1_msvc2015.7z C:\Qt\5.7\msvc2015\*
appveyor PushArtifact qt_5_7_1_msvc2015_64.7z



7z.exe a -t7z -r directx_sdk.7z "C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)\*"
appveyor PushArtifact directx_sdk_june_2010.7z



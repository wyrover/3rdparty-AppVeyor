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

set PATH=C:\msys64\bin;%PATH%
set PATH=C:\msys64\usr\bin;%PATH%
set PATH=C:\msys64\mingw64\bin;%PATH%

REM echo useful info
bash --login -c "env"
bash --login -c "echo $PATH"
bash --login -c "pacman -Q"

rem bash --login -c "pacman -S --noconfirm python"

rem bash --login -c "curl https://bootstrap.pypa.io/get-pip.py | python"
rem bash --login -c "pip install cram"

set PATH=%premake_dir%;%PATH%;%BOOST_BUILD_PATH%\src\engine\bin.ntx86

git submodule update --init --recursive


if [%PLATFORM%] == [x86] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x86
if [%PLATFORM%] == [x86] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN32%
if [%PLATFORM%] == [x86] set CMAKE_GENERATOR=Visual Studio 14 2015    
    


if [%PLATFORM%] == [x64] call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" amd64
if [%PLATFORM%] == [x64] set BOOST_LIBRARYDIR=%BOOST_LIBRARYDIR_WIN64%   
if [%PLATFORM%] == [x64] set CMAKE_GENERATOR=Visual Studio 14 2015 Win64   


rem wget https://github.com/mlocati/gettext-iconv-windows/releases/download/v0.19.8.1-v1.14/gettext0.19.8.1-iconv1.14-shared-32.zip
    

cmake --version
msbuild /version
which perl.exe
which 7z.exe

echo %BOOST_LIBRARYDIR%
set PATH=%QT5%\bin;%PATH%


if exist "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" ( dir "C:\Program Files (x86)\Microsoft SDKs\Windows Kits" )
if exist "C:\Program Files\Microsoft SDKs\Windows" ( dir "C:\Program Files\Microsoft SDKs\Windows" )


rem 7z.exe a -t7z -r qt_5_7_1_msvc2015_64.7z C:\Qt\5.7\msvc2015_64\*
rem appveyor PushArtifact qt_5_7_1_msvc2015_64.7z


rem 7z.exe a -t7z -r qt_5_7_1_msvc2015.7z C:\Qt\5.7\msvc2015\*
rem appveyor PushArtifact qt_5_7_1_msvc2015.7z



rem 7z.exe a -t7z -r directx_sdk_june_2010.7z "C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)\*"
rem appveyor PushArtifact directx_sdk_june_2010.7z

rem 7z.exe a -t7z -r cygwin.7z "C:\cygwin\*"
rem appveyor PushArtifact cygwin.7z

rem 7z.exe a -t7z -r msys64.7z "C:\msys64\*"
rem appveyor PushArtifact msys64.7z

rem 7z.exe a -t7z -r mingw-w64.7z "C:\mingw-w64\*"
rem appveyor PushArtifact mingw-w64.7z

rem 7z.exe a -t7z -r MinGW.7z "C:\MinGW\*"
rem appveyor PushArtifact MinGW.7z



:install_ninja

mkdir C:\projects\deps
set NINJA_URL="https://github.com/ninja-build/ninja/releases/download/v1.8.2/ninja-win.zip"

wget %NINJA_URL% -o ninja.zip
7z x ninja.zip -oC:\projects\deps\ninja > nul
set PATH=C:\projects\deps\ninja;%PATH%

ninja --version
set PATH=C:\msys64\bin;%PATH%
set PATH=C:\msys64\usr\bin;%PATH%
set PATH=C:\msys64\mingw64\bin;%PATH%

set CC=x86_64-w64-mingw32-gcc

REM echo useful info
bash --login -c "$CC -v"

REM appveyor msys configure workaround "exec 0</dev/null"
REM bash --login -c "cd `cygpath '%CD%'`; exec 0</dev/null; ./autoconf.sh"
REM bash --login -c "cd `cygpath '%CD%'`; make"



cd c:\projects\3rdparty-AppVeyor\
cd src\helloworld
cl main.cpp

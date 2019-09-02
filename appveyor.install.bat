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


git submodule update --init --recursive


    

cmake --version
msbuild /version
which perl.exe
which 7z.exe


git config --global core.longpaths true

wget https://storage.googleapis.com/chrome-infra/depot_tools.zip

7z x depot_tools.zip -oC:\depot_tools

dir C:\depot_tools

set PATH=C:\depot_tools;%PATH%

echo "build........................."


cd ..
md electron-gn && cd electron-gn
gclient config --name "src/electron" --unmanaged https://github.com/electron/electron
gclient sync --with_branch_heads --with_tags



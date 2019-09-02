
set ROOT_DIRECTORY=%CD%
cd %ROOT_DIRECTORY%

set PATH=C:\msys64\bin;%PATH%
set PATH=C:\msys64\usr\bin;%PATH%
set PATH=C:\msys64\mingw64\bin;%PATH%

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

dir



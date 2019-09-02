echo "build........................."


cd ..
md electron-gn && cd electron-gn
gclient config --name "src/electron" --unmanaged https://github.com/electron/electron
gclient sync --with_branch_heads --with_tags
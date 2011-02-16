#/bin/sh
# navigation
find src -not \( -name 's.*' -or -name 'p.*' \) -and \( -name '*.c' -or -name '*.cc' -or -name '*.cpp' -or -name '*.h' \) | grep -Ev "(Attic|libraries/external/xerces|libraries/ingrian/openssl/openssl.cavium|i100/test|i100/build|commands/ingrian/test|commands/ingrian/tools|export/include)" > flist

ctags -L flist
echo "ctags done!"

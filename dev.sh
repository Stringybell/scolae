#!/usr/bin/env bash

echo "Building..."
echo

# ELF
gcc src/executable.c -o tests/bin/santorini

# PE 32bit
i686-w64-mingw32-gcc -o tests/bin/santorini32.exe src/executable.c

# PE 64bit
i686-w64-mingw32-gcc -o tests/bin/santorini64.exe src/executable.c

# PE Default 64bit
i686-w64-mingw32-gcc -o tests/bin/santorini.exe src/executable.c

# Launcher
cd src/santorini-launcher
make
mv santorini-launcher ../../tests/bin
cd ../..
pwd

echo
echo "Done"

git add .
git commit -m "test"
git push origin master
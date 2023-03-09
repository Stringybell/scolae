#!/usr/bin/env bash

echo "Building..."
echo

# ELF
gcc src/executable.c -o bin/santorini

# PE 32bit
i686-w64-mingw32-gcc -o bin/santorini32.exe src/executable.c

# PE 64bit
i686-w64-mingw32-gcc -o bin/santorini64.exe src/executable.c

# PE Default 64bit
i686-w64-mingw32-gcc -o bin/santorini.exe src/executable.c

# Launcher
cd src/santorini-launcher
make
mv santorini-launcher ../../bin
cd ../..
pwd

# Linux Package
mkdir -p linux
cp jdk/jdk-15.0.1_linux-x64_bin.tar.gz linux/
cd linux
tar xzvf jdk-15.0.1_linux-x64_bin.tar.gz
rm -f jdk-15.0.1_linux-x64_bin.tar.gz
mkdir -p bin
cp -R ../bin/*.sh bin
cp -R ../bin/santorini bin
cp -R ../bin/santorini-launcher ./
chmod +x bin/*
chmod +x santorini-launcher
cp ../src/readme.txt ./
mkdir -p jar
wget https://raw.githubusercontent.com/SindriaInc/ing-sw-2020-balossini-barelli-brebbia/master/src/deliverables/jar/Santorini.jar -P jar
cd ..
mv linux santorini-linux64
tar czvf santorini-linux64.tar.gz santorini-linux64/
rm -rf santorini-linux64/
mv santorini-linux64.tar.gz dist/

# Windows Package
mkdir -p windows
cp jdk/jdk-15.0.1_windows-x64_bin.zip windows/
cd windows
unzip jdk-15.0.1_windows-x64_bin.zip
rm -f jdk-15.0.1_windows-x64_bin.zip
mkdir -p bin
cp -R ../bin/*.exe bin
cp -R ../bin/*.bat bin
# TODO da sostituire con il PE
cp -R ../bin/santorini-launcher ./
chmod +x bin/*
chmod +x santorini-launcher
cp ../src/readme.txt ./
mkdir -p jar
wget https://raw.githubusercontent.com/SindriaInc/ing-sw-2020-balossini-barelli-brebbia/master/src/deliverables/jar/Santorini.jar -P jar
cd ..
mv windows santorini-windowsx86_64
zip -r santorini-windowsx86_64.zip santorini-windowsx86_64
rm -rf santorini-windowsx86_64/
mv santorini-windowsx86_64.zip dist/

echo
echo "Done"
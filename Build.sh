#!/bin/bash -e

cd vwii
mkdir data 2
cd ../wiiu
mkdir data 2
cd ../vwii/app_booter
echo
echo Building vWii App Booter
echo
make clean
make
mv app_booter.bin ../data

cd ..
echo
echo Building vWii Loader
echo
make clean
make
mv boot.dol ../wiiu/data

cd ../wiiu
echo
echo Building WiiU Installer
echo
make clean
make

echo
read -p "Hit enter: "

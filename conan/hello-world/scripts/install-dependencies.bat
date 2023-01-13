@echo off
SET "ROOT_DIR=%~dp0.."


setlocal
cd "%ROOT_DIR%"


REM make directories
mkdir build

REM build
cd build
python -u -m conans.conan install .. -u --build=missing
scripts\clean.bat

@echo off
SET "ROOT_DIR=%~dp0.."


setlocal
cd "%ROOT_DIR%"


REM make directories
mkdir build

REM build
cd build
conan install .. -u --build=missing

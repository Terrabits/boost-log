@echo off
SET "ROOT_DIR=%~dp0.."


setlocal
cd "%ROOT_DIR%"


REM make directories
mkdir build
mkdir build\bin

REM build
conan install . -u --install-folder build --build=missing

@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM clean
rmdir /S /Q build
mkdir build
mkdir build\bin

REM regenerate build\conanbuildinfo.cmake
scripts\install-dependencies

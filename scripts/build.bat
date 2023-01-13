@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM make directories
mkdir build     >nul 2>&1
mkdir build\bin >nul 2>&1

REM build
python -u -m conans.conan build . --build-folder build

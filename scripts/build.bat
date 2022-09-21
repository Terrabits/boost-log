@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM make directories
mkdir build
mkdir build\bin

REM build
conan build . --build-folder build

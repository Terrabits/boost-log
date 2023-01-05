@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM clean
rmdir /S /Q build\bin
mkdir build
mkdir build\bin

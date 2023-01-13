@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM clean
rmdir /S /Q build\bin >nul 2>&1
mkdir build           >nul 2>&1
mkdir build\bin       >nul 2>&1

@echo off
SET "ROOT_DIR=%~dp0.."


setlocal
cd "%ROOT_DIR%"


REM clean
rmdir /S /Q build >nul 2>&1

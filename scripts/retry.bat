@echo off
SET "ROOT_DIR=%~dp0.."

setlocal
cd "%ROOT_DIR%"

REM retry
call scripts\clean
call scripts\build
call scripts\start

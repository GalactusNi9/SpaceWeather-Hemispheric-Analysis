@echo off
rem safemd.bat:        Safely create a dir (no error if it already exists)
rem Input parameters:  %1 the directory to create
rem Output parameters: gmstatus set to 0 for success, 1 for failure

set gmstatus=0
if not exist %1 goto makeit
goto endscript

:makeit
mkdir %1 > nul
if errorlevel 1 set gmstatus=1
goto endscript

:endscript

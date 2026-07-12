@echo off
rem findtool.bat:      Find out which tool (curl or wget) is available
rem Input parameters:  none
rem Output parameters: gmtool - set to the tool name (or the value 'none')

set gmtool=none

where /q curl
if errorlevel 1 goto check_wget
set gmtool=curl
goto checks_done

:check_wget
where /q wget
if errorlevel 1 goto checks_done
set gmtool=wget

:checks_done        

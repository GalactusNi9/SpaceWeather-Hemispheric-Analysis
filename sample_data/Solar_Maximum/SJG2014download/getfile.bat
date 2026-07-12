@echo off
rem getfile.bat - Download a file from a web server
rem Input parameters:  %1 URL to download from
rem                    %2 local file to download to
rem                    %3 number of retries to do
rem                    %gin_username% username for GIN web site
rem                    %gin_password% password for GIN web site
rem                    %proxy_username% username:password for local proxy server
rem                    %proxy_address% address:port for local proxy server
rem Output parameters: gmstatus 0 for success, 1 for download failure,
rem                             2 if binary for download tool cannot be found

rem set http_proxy (only used by wget)
if "%proxy_address%" == "" goto proxy_done
if "%proxy_username%" == "" goto proxy2
set http_proxy=http://%proxy_username%@%proxy_address%/
goto proxy_done
:proxy2
set http_proxy=http://%proxy_address%/
:proxy_done

rem find which tool to use
call findtool.bat

rem remove any existing file
if exist %2 del %2

set opts= 
set gmstatus=0
if %gmtool%==curl goto curl_username
if %gmtool%==wget goto wget_username
set gmstatus=2
goto endscript

:curl_username
if "%gin_username%" == "" goto curl_proxy
set opts=%opts% --basic -u %gin_username%
if "%gin_password%" == "" goto curl_proxy
set opts=%opts%:%gin_password%
:curl_proxy
if "%proxy_address%" == "" goto curl_download
set opts=%opts% -x %proxy_address%
if "%proxy_password%" == "" goto curl_download
set opts=%opts% -U %proxy_password%
:curl_download
set opts=-k %opts%
curl %opts% -s --retry %3 %1 -o %2
if errorlevel 1 set gmstatus=1
goto :endscript

:wget_username
if "%gin_username%" == "" goto wget_download
set opts=%opts% --http-user=%gin_username%
if "%gin_password%" == "" goto wget_download
set opts=%opts% --http-password=%gin_password%
:wget_download
wget %opts% -q -t %3 -O %2 %1
if errorlevel 1 set gmstatus=1
goto :endscript

:endscript

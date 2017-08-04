@echo off

if "%~1"=="?" goto HELP
if "%~1"=="/?" goto HELP
if "%~1"=="" goto HELP

powershell -Command "Start-Process -Wait cmd \"/c %1\" -Verb RunAs"

goto :EOF

:HELP
echo.
echo Help:
echo Run as Administrator
echo.
echo   sudo [command]
goto :EOF

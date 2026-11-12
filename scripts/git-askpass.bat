@echo off
set "PROMPT=%~1"

echo %PROMPT% | findstr /I "username" >nul
if not errorlevel 1 (
    echo %GIT_USERNAME%
    exit /b 0
)

echo %GIT_PASSWORD%

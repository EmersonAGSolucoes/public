@echo off
if /I "%~1"=="Username for*" (
    echo %GIT_USERNAME%
) else (
    echo %GIT_PASSWORD%
)

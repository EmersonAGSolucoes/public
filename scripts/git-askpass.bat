@echo off
if /I "%~1"=="*Username*" (
    echo %GIT_USERNAME%
) else (
    echo %GIT_PASSWORD%
)

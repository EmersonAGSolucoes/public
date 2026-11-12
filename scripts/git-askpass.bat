@echo off
echo executou askpass.bat > git-askpass.log
if /I "%~1"=="Username for*" (
    echo %GIT_USERNAME%
    exit /b 0
)

echo %GIT_PASSWORD%
exit /b 0

powershell -ExecutionPolicy Bypass -File ".\comparar.ps1" -Diretorio ".\..\tabelas"
set error1=%ERRORLEVEL%


powershell -ExecutionPolicy Bypass -File ".\comparar.ps1" -Diretorio ".\..\arquivos"
set error2=%ERRORLEVEL%

if %error1%%error2% neq 11 (
    exit /b 0
) else (
    exit /b 1
)
powershell -ExecutionPolicy Bypass -File ".\comparar.ps1" -Diretorio ".\..\tabelas"

if errorlevel 0 (
    echo Houve alteracoes, fazendo commit...    
) else (
    echo Nenhuma alteracao encontrada.
)

powershell -ExecutionPolicy Bypass -File ".\comparar.ps1" -Diretorio ".\..\arquivos"

if errorlevel 0 (
    echo Houve alteracoes, fazendo commit...    
) else (
    echo Nenhuma alteracao encontrada.
)

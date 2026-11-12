Import-Module ImportExcel

$dados = Import-Excel ".\dados.xls"

$dados | ConvertTo-Json -Depth 10 |
    Set-Content ".\dados_convertido.json"
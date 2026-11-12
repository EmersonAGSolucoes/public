param(
    [string]$Diretorio = ".\tabelas"
)

$versao_anterior = Join-Path $Diretorio "versao.tmp"
$versao_nova = Join-Path $Diretorio "versao.json"

$anterior = Get-Content $versao_anterior | ConvertFrom-Json
$novo     = Get-Content $versao_nova | ConvertFrom-Json

$antigoJson = $anterior.arquivos | ConvertTo-Json -Compress
$novoJson   = $novo.arquivos | ConvertTo-Json -Compress

if ($antigoJson -eq $novoJson) {
    Write-Host "Nenhuma alteracao encontrada."
    exit 1
}

Write-Host "Arquivos alterados."
exit 0


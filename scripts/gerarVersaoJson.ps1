param(
    [string]$Diretorio = ".\tabelas",
    [string]$Versao = "1.0.0"
)

$arquivoVersao = Join-Path $Diretorio "versao.json"

$arquivos = Get-ChildItem -Path $Diretorio -File -Filter "*.json"|
    Where-Object { $_.Name -ne "versao.json" } |
    Sort-Object Name |
    ForEach-Object {
		$content = [System.IO.File]::ReadAllText($_.FullName)		
		$content = $content -replace "`r`n", "`n"		
		$bytes = [System.Text.Encoding]::UTF8.GetBytes($content)
		$sha256 = [System.Security.Cryptography.SHA256]::Create()
		$hashBytes = $sha256.ComputeHash($bytes)
		$hash = [System.BitConverter]::ToString($hashBytes).Replace("-", "")        

        [PSCustomObject]@{
            nome  = $_.Name
            hash  = $hash
        }
    }

$objeto = [PSCustomObject]@{
    versao   = $Versao
    arquivos = @($arquivos)
}

$objeto |
    ConvertTo-Json -Depth 10 |
    Set-Content -Path $arquivoVersao -Encoding UTF8

Write-Host "Arquivo gerado: $arquivoVersao"
Write-Host "Versão: $Versao"
Write-Host "Arquivos: $($arquivos.Count)"
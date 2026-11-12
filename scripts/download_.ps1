$pwd = ConvertTo-SecureString "123456" -AsPlainText -Force

$cert = Get-PfxCertificate "AG_INFORMATICA_LTDA_14950205000142_SENHA_123456_VENC_29042027-1777486007519.pfx"

Invoke-RestMethod `
    -Uri "https://cff.svrs.rs.gov.br/api/v1/consultas/classTrib" `
    -Certificate $cert `
    -Password $pwd `
    -OutFile "classTrib.json"
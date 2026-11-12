@echo off
echo baixando "https://cff.svrs.rs.gov.br/api/v1/consultas/classTrib"
curl ^
  --cert-type P12 ^
  --cert AG_INFORMATICA_LTDA_14950205000142_SENHA_123456_VENC_29042027-1777486007519.pfx:123456 ^
  -o classTrib.tmp ^
  https://cff.svrs.rs.gov.br/api/v1/consultas/classTrib ^
  -sS -f -L
if errorlevel 1 (
    echo ERRO ao baixar arquivo em "https://cff.svrs.rs.gov.br/api/v1/consultas/classTrib"
    exit /b 1
)

echo baixando "https://cff.svrs.rs.gov.br/api/v1/consultas/credPresumido"
curl ^
  --cert-type P12 ^
  --cert AG_INFORMATICA_LTDA_14950205000142_SENHA_123456_VENC_29042027-1777486007519.pfx:123456 ^
  -o credPresumido.tmp ^
  https://cff.svrs.rs.gov.br/api/v1/consultas/credPresumido ^
  -sS -f -L
if errorlevel 1 (
    echo ERRO ao baixar arquivo em "https://cff.svrs.rs.gov.br/api/v1/consultas/credPresumido"
    exit /b 1
)
@echo on




cd /D %temp%

cls

echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo:::::::::::EFETUANDO LIMPEZA ARQUIVOS DA PASTA TEMP:::::::::::
echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo::::Mapeameando e excluindo pastas que contem "scoped_dir"::::

dir | findstr "scoped_dir" > arquivo.txt

@echo off

Set "InputFile=arquivo.txt"
Set "OutputFile=TesteFinal.txt"

setLocal EnableDelayedExpansion > "%OutputFile%"

for /f "usebackq tokens=* delims= " %%a in ("%InputFile%") do (set s=%%a
	 >> "%OutputFile%" echo.!s:~36!)


for /f "usebackq tokens=* delims= " %%a in ("%OutputFile%") do (

set s=%%a 

rmdir --force /Q /S  %%a
 
)

cls

echo::::Mapeameando e excluindo arquivos pdf e xls"::::

del   --force /F /Q /A    "*.xls"  
del   --force /F /Q /A    "*.pdf" 
del   --force /F /Q /A    "*.ods"
del   --force /F /Q /A    "*.docx"
del   --force /F /Q /A    "*.doc"
del   --force /F /Q /A    "nsemail*" 
del   --force /F /Q /A    "*.RTF"
del   --force /F /Q /A    "*.JPG"
del   --force /F /Q /A    "*.PNG"
del   --force /F /Q /A    "*.JPEG"


cls


timeout 3






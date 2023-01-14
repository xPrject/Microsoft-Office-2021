@echo off
@color 0a
cd /d %ProgramFiles%\Microsoft Office\Office16

echo Installing Volume Activation Licences...
for /f %x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x"

echo Updating Key Management Server...
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /sethst:193.29.63.133

echo Requesting for Activation...
cscript ospp.vbs /unpkey:6F7TH >nul
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /act

pause

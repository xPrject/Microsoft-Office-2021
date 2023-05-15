@echo off 
@color 0a
title Microsoft Office 2021 Volume Licensing Activation - xProject
set KMS=104.244.78.23
set PORT=1688

echo =====================================================================================
echo #Project: Microsoft Office 2021 Volume Licensing Activation
echo =====================================================================================

cd "%windir%\system32"
cscript //nologo slmgr.vbs /ckms

echo.
(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")&
(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")&
(for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript //nologo ospp.vbs /inslic:"..\root\Licenses16\%%x" &echo.)

echo.
cscript //nologo ospp.vbs /sethst:%KMS%
cscript //nologo ospp.vbs /setprt:%PORT%

echo.
cscript //nologo ospp.vbs /unpkey:6F7TH

echo.
cscript //nologo ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript //nologo ospp.vbs /act

pause
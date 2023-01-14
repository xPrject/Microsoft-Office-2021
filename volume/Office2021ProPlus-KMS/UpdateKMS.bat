@echo off
@color 0a
@echo.
@echo Installing Volume License Certificates...
cscript ospp.vbs /inslic:"%cd%\Certificates\ProPlus2021VL_KMS_Client_AE-ppd.xrm-ms"
@echo.
cscript ospp.vbs /inslic:"%cd%\Certificates\ProPlus2021VL_KMS_Client_AE-ul.xrm-ms"
@echo.
cscript ospp.vbs /inslic:"%cd%\Certificates\ProPlus2021VL_KMS_Client_AE-ul-oob.xrm-ms"

@echo.
echo Updating Key Management Server...
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /sethst:193.29.63.133
@echo.

echo Requesting for Activation...
cscript ospp.vbs /unpkey:6F7TH >nul
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /act

@echo.
@echo Activation Complete
pause

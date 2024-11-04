@echo off

:Menu
echo.
echo Windows Activation Options:
echo.
echo 1. Enter Product Key
echo 2. Set KMS Server
echo 3. Activate Online
echo.
choice /c 123 /m "Select an option:"

if errorlevel 3 goto Option3
if errorlevel 2 goto Option2
if errorlevel 1 goto Option1

:Option1
echo Activating with Product Key...
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto Menu 

:Option2
echo Setting KMS Server...
slmgr /skms kms8.msguides.com
goto Menu

:Option3
echo Activating Online...
slmgr /ato
goto Menu 

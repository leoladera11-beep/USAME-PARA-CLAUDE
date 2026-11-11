@echo off
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0Preparar-Brisa.ps1" -Iniciar
if errorlevel 1 pause

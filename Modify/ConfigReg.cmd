@echo off

set oem=_msi5
set EmuID=526423
set EmuName=MSI 5.11 Pie64 Debloat GG
set EmuNameDone="%EmuName%"
set SizeKB=4943421

if exist %ProgramFiles%\BlueStacks%oem%\Assets\%EmuID% goto start
if not exist %ProgramFiles%\BlueStacks%oem%\Assets\%EmuID% Exit /b

:start
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v DisplayName /f>nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v DisplayName /t REG_SZ /d %EmuNameDone%>nul
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v EstimatedSize /f>nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v EstimatedSize /t REG_DWORD /d %SizeKB%>nul
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v Publisher /f>nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v Publisher /t REG_SZ /d "Hieu GL Lite">nul
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v HelpLink /f>nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks%oem% /v HelpLink /t REG_SZ /d "https://sites.google.com/view/hieugllite">nul

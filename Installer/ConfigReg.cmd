@echo off

if exist %ProgramFiles%\BlueStacks_nxt\Assets\547984 goto start
if not exist %ProgramFiles%\BlueStacks_nxt\Assets\547984 goto end

:start
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v DisplayName /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v DisplayName /t REG_SZ /d "BlueStacks 5.13.0 Lite GG"
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v EstimatedSize /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v EstimatedSize /t REG_DWORD /d 3495198
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v Publisher /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v Publisher /t REG_SZ /d "Hieu GL Lite"
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\BlueStacks_nxt /v HelpLink /t REG_SZ /d "https://sites.google.com/view/hieugllite"

:end
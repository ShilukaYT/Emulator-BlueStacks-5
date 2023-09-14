@echo off
cd /d %~dp0
move .\Nougat32_5.9.10.1008.7z C:\ProgramData\Nougat32_5.9.10.1008.7z
:home
mode 65, 25
Title Hieu Gaming Launcher
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.0.1061 (Only 64-bit)
echo Cre: Hieu Gaming
echo Please select the installation type
echo [1] Standard Install
echo [2] Automatic Install (C:\ProgramData\Bluestacks_nxt)
echo =================================================================
echo [3] Visit my Website
echo [4] Subscribe to Hieu Gaming
echo [5] Exit
choice /C:12345 /N /M "Enter Your Choice : "
set _erl=%errorlevel%

if %_erl%==5 goto a5
if %_erl%==4 goto a4
if %_erl%==3 goto a3
if %_erl%==2 goto a2
if %_erl%==1 goto a1

:a1
Title Hieu Gaming Launcher - Installing
Start BlueStacksInstaller.exe
goto home

:a2
Title Hieu Gaming Launcher - Installing
BlueStacksInstaller.exe  args :-pddir="C:\ProgramData\BlueStacks_nxt" -defaultImageName=Nougat32 -imageToLaunch=Nougat32 -isSSE4Available=1 -appToLaunch=bs5 -country=VN
goto home

:a3
Title Hieu Gaming Launcher - Redirecting
Echo Redirecting to Website
start https://sites.google.com/view/hieugaming && goto home

:a4
Title Hieu Gaming Launcher - Redirecting
echo Redirecting to Youtube
start https://bit.ly/subtohieugmytb && goto home

:a5
Title Hieu Gaming Launcher - Cleaning up
echo Cleaning up...
del * /s /q
exit /b
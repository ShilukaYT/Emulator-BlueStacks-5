::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHWL801wI7ieQgy+FGK/E5IwxOHv6tWlrlgYR/Y+e4TImuHAcbFd40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jHzeaSpw0wW+Y2fpbn6bGaNfBAuHnNe4U513ZWndlCCQNdHg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cd /d %~dp0
mode 95,30
:Prepare
cls
Title Hieu GL Lite Installer - Preparing
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo Preparing...

set BS5="%ProgramFiles%\BlueStacks_nxt\HD-Player.exe"
set dispar=".\DiskPart.txt"
set _erl=%errorlevel%

if not exist "HD-Nougat32Image.bin" goto PRE_ERROR
if not exist ".\DiskPart.txt" goto PRE_ERROR
if exist %BS5% goto BS_INSTALLED
goto home

:PRE_ERROR
cls
Title Hieu GL Lite Installer - Missing files
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo Missing files, please download again from Hieu GL Lite website or Hieu GL Lite Discord Server
echo [1] Go to Website
echo [2] Join Discord Server
echo [3] Quit Installer

choice /c:123 /n /m "Enter Your Choice : "

if %_erl%==3 goto Quit
if %_erl%==2 goto Discord
if %_erl%==1 goto Website

:BS_INSTALLED
cls
Title Hieu GL Lite Installer - BlueStacks 
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo Detected another version of Bluestacks 5!
echo Please uninstall Bluestacks 5 to continue the installation!
echo [1] Quit Installer

choice /c:1 /n /m "Enter Your Choice : "

if %_erl%==1 goto Quit

:home
cls
Title Hieu GL Lite Installer
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo [1] Install BlueStacks 5
echo.
echo.
echo.
echo.
echo.
echo ===============================================================================================
echo [2] Visit my Website
echo [3] Join my Discord Server
echo [4] Subscribe my channel
echo [5] Quit Installer
echo ===============================================================================================
choice /c:12345 /n /m "Enter Your Choice : "

if %_erl%==1 goto 
if %_erl%==2 goto website_2
if %_erl%==3 goto Discord_2
if %_erl%==4 goto Youtube
if %_erl%==5 goto Quit

:Setup_Wizard
cls
Title Hieu GL Lite Installer
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo.
DiskPart /s %dispar%
echo Enter the drive you want to install to and press Enter
set /p drive=Drive: 
if not exist %drive%:\ goto Drive_Error
Set PDDIR=%drive%:
goto Install

:Install
cls
Title Hieu GL Lite Installer - Preparing...
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo. 
Echo Preparing to Install...
move ".\HD-Nougat32Image.bin" "%PDDir%\Nougat32_5.11.42.1002.exe"


cls
Title Hieu GL Lite Installer - Installing...
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo. 
echo Installing BlueStacks 5...
echo This may take a few minutes!!
Bootstrapper.exe -pddir="%PDDIR%\BlueStacks_nxt" -md5=12996779CAD65333F09350153D89F154 -imageToLaunch=Nougat32 -defaultImageName=Nougat32

:pending
cls
Title Hieu GL Lite Installer - Installing...
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo. 
echo Installing BlueStacks 5...
echo This may take a few minutes!!
if not exist %BS5% goto install_fail
cls
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo BlueStacks 5 is running!
echo Quit BlueStacks to Finish Installation!
%BS5% --instance Nougat32
goto Quit

:install_fail
cls
Title Hieu GL Lite Installer - Install Fail
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo. 
echo Installation failed!
echo Press any key to exit...
pause>nul
goto Quit


:Drive_Error
cls
Title Hieu GL Lite Installer
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo The drive you entered does not exist
echo Please re-enter the drive!
echo [1] Re-enter the drive
echo [2] Cancel installation
choice /c:12 /n /m "Enter Your Choice : "

if %_erl%==1 goto Setup_Wizard
if %_erl%==2 goto home

:Youtube
Title Hieu GL Lite Launcher - Redirecting
Echo Redirecting to Youtube
start https://bit.ly/subtohieugmytb && goto home

:website
Title Hieu GL Lite Installer - Redirecting
Echo Redirecting to Website
start https://sites.google.com/view/hieugllite && goto PRE_ERROR

:website_2
Title Hieu GL Lite Installer - Redirecting
Echo Redirecting to Website
start https://sites.google.com/view/hieugllite && goto home

:Discord
Title Hieu GL Lite Launcher - Redirecting
Echo Redirecting to Discord
start https://discord.gg/GnmKM9bqEf && goto PRE_ERROR

:Discord_2
Title Hieu GL Lite Launcher - Redirecting
Echo Redirecting to Discord
start https://discord.gg/GnmKM9bqEf && goto home


:Quit
Title Hieu GL Lite Installer
cls
echo.
echo ===============================================================================================
echo                                   Hieu GL Lite Installer
echo                                    Made by Hieu GL Lite
echo ===============================================================================================
echo Emulator: Bluestacks
echo Version: 5.11.42.1002
echo Emulator OS: Android 7 Nougat - 32-bit
echo Google Services: Yes!!
echo ===============================================================================================
echo Thank you for choosing me!!!
echo <3
Timeout 10
Del * /s /q
Exit /b
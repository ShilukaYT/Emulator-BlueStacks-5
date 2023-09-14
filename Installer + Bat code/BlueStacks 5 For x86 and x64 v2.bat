@echo off
:home
mode 65, 25
Title Hieu GL Lite Launcher
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo Please select the installation type
echo [1] 32-bit
echo [2] 64-bit
echo =================================================================
echo [3] Visit my Website
echo [4] Subscribe to Hieu GL Lite
echo [5] Exit
choice /C:12345 /N /M "Enter Your Choice : "
set _erl=%errorlevel%

if %_erl%==5 goto quitlauncher
if %_erl%==4 goto youtube
if %_erl%==3 goto website
if %_erl%==2 goto x64
if %_erl%==1 goto x86

:x86
Title Hieu GL Lite Launcher - Pending Install...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Please choose the installation method
echo [1] Default Path (%programdata%\Bluestacks_nxt)
echo [2] Custom Path
echo =================================================================
echo [3] Cancel Installation
choice /C:123 /N /M "Enter Your Choice : "
set _erl=%errorlevel%

if %_erl%==3 goto home
if %_erl%==2 goto Defaultx86
if %_erl%==1 goto Customx86

:Defaultx86
Title Hieu GL Lite Launcher - Installing...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Installing, it may take a few minutes...
echo =================================================================
.\x86\BlueStacksInstaller.exe -s -defaultImageName=Nougat32 -imageToLaunch=Nougat32 -pddir=%programdata%\BlueStacks_nxt -isSSE4Available=1
echo Installation is complete, press any key to finish
pause>nul
goto home

:Customx86
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
set /p PDPath=Enter your Path : 
cls
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo The application will be installed at %PDPath%\BlueStacks_nxt
echo =================================================================
echo Press any key to start installation
Pause>nul
cls
Title Hieu GL Lite Launcher - Installing...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Installing, it may take a few minutes...
echo =================================================================
.\x86\BlueStacksInstaller.exe -s -defaultImageName=Nougat32 -imageToLaunch=Nougat32 -pddir=%PDPath%\BlueStacks_nxt -isSSE4Available=1
echo Installation is complete, press any key to finish
pause>nul
goto home

:x64
Title Hieu GL Lite Launcher - Pending Install...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Please choose the installation method
echo [1] Default Path (%programdata%\Bluestacks_nxt)
echo [2] Custom Path
echo =================================================================
echo [3] Cancel Installation
choice /C:123 /N /M "Enter Your Choice : "
set _erl=%errorlevel%

if %_erl%==3 goto home
if %_erl%==2 goto Defaultx64
if %_erl%==1 goto Customx64

:Defaultx64
Title Hieu GL Lite Launcher - Installing...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Installing, it may take a few minutes...
echo =================================================================
.\x64\BlueStacksInstaller.exe -s -defaultImageName=Nougat32 -imageToLaunch=Nougat32 -pddir=%programdata%\BlueStacks_nxt -isSSE4Available=1
echo Installation is complete, press any key to finish
pause>nul
goto home

:Customx64
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
set /p PDPath=Enter your Path : 
cls
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo The application will be installed at %PDPath%\BlueStacks_nxt
echo =================================================================
echo Press any key to start installation
Pause>nul
cls
Title Hieu GL Lite Launcher - Installing...
echo.
echo BlueStacks 5 Lite
echo Version: 5.9.350.1035
echo Cre: Hieu GL Lite
echo =================================================================
echo Installing, it may take a few minutes...
echo =================================================================
.\x64\BlueStacksInstaller.exe -s -defaultImageName=Nougat32 -imageToLaunch=Nougat32 -pddir=%PDPath%\BlueStacks_nxt -isSSE4Available=1
echo Installation is complete, press any key to finish
pause>nul
goto home

:website
Title Hieu GL Lite Launcher - Redirecting
Echo Redirecting to Website
start https://sites.google.com/view/hieugllite && goto home

:youtube
Title Hieu GL Lite Launcher - Redirecting
echo Redirecting to Youtube
start https://bit.ly/subtohieugmytb && goto home

:quitlauncher
Title Hieu GL Lite Launcher - Cleaning up
echo Cleaning up...
del * /s /q
exit /b
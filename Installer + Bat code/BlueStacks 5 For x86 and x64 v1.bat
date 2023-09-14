::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDNdSRHCGGS7CIks4evv+viCsXERW+UwR4Tk5bqGH7YR33rtdpkjmHNZl6s=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJieEkGAlbUbDja
::ZQ05rAF9IBncCkqN+0xwdVsGHFbQcjnsVuZ8
::ZQ05rAF9IAHYFVzEqQIYIR5BDCODMWK0AdU=
::eg0/rx1wNQPfEVWB+kM9LVsJDCaOKW6JErQf4/u7xuSUtkwRWOctOKPaz7qNKOUBig==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEphJielt8RQGXfEy7C7wS74g=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDNdSRHCGGS7CIk47fvw++WXnm8RQecsbI7Y0afOda5FpBS0Jdh8higM2OcFGB4YWDSXTAMhrH1Wt2eOJIfJ/VmvGxjZqBpgSTM0q2rEiWsdRu9bn9cWw2675Eif
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:home
mode 65, 25
Title BlueStacks Installer Launcher
echo.
echo BlueStacks 5.6.100.1026 Lite FF
echo Cre: Hieu Gaming
Echo Please select the version you want to install!!!
echo Enter the number corresponding to the items below
echo [1] 32 Bit
echo [2] 64 bit
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
cls
Title BlueStacks Installer Launcher - Installing
Start Setup32.exe
echo If you can't install, press 1 to reinstall
echo If you have finished installing the application, press 2 to exit
choice /C:12 /N /M "Enter Your Choice : "
if %_erl%==2 goto home
if %_erl%==1 goto a1
exit

:a2
cls
Title BlueStacks Installer Launcher - Installing
Start Setup64.exe
echo If you can't install, press 1 to reinstall
echo If you have finished installing the application, press 2 to exit
choice /C:12 /N /M "Enter Your Choice : "
if %_erl%==2 goto home
if %_erl%==1 goto a2
exit

:a3
cls
Title BlueStacks Installer Launcher - Redirecting
Echo Redirecting to Website
start https://sites.google.com/view/hieugaming && goto home

:a4
cls
Title BlueStacks Installer Launcher - Redirecting
echo Redirecting to Youtube
start https://bit.ly/subtohieugmytb && goto home

:a5
cls
Title BlueStacks Installer Launcher - Cleaning up
echo Cleaning up...
del Nougat32_5.6.100.1026.7z
del Setup32.exe
del Setup64.exe
del Setup.exe
exit /b


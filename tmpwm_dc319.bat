
@echo off
title X
color 0A

echo ================================================
echo Starting operations...
echo ================================================
echo.

:: Stop vgk service
echo [1/5] 
sc stop vgk
if %errorlevel% equ 0 (
    echo [SUCCESS] 
) else (
    echo [WARNING] 
)
echo.

:: Stop vgc service
echo [2/5] 
sc stop vgc
if %errorlevel% equ 0 (
    echo [SUCCESS] 
) else (
    echo [WARNING]
)
echo.

:: Delete Vanguard logs
echo [3/5] 
if exist "C:\Program Files\Riot Vanguard\Logs\*.*" (
    del /q "C:\Program Files\Riot Vanguard\Logs\*.*"
    if %errorlevel% equ 0 (
        echo [SUCCESS] 
    ) else (
        echo [ERROR] 
    )
) else (
    echo [WARNING] 
)
echo.

:: Delete vgkbootstatus.dat
echo [4/5] 
if exist "C:\Windows\vgkbootstatus.dat" (
    del /q "C:\Windows\vgkbootstatus.dat"
    if %errorlevel% equ 0 (
        echo [SUCCESS] 
    ) else (
        echo [ERROR] 
    )
) else (
    echo [WARNING] 
)
echo.

:: Delete 392667600.dat
echo [5/5] 
if exist "C:\Windows\392667600.dat" (
    del /q "C:\Windows\392667600.dat"
    if %errorlevel% equ 0 (
        echo [SUCCESS] 
    ) else (
        echo [ERROR] 
    )
) else (
    echo [WARNING] 
)
echo.
cls
echo ================================================
echo All operations completed!
echo ================================================
echo.
echo IMPORTANT: You may need to restart your computer
echo for changes to take effect.
echo.
shutdown /r /t 4
pause

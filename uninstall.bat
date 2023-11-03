@echo off
setlocal

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo This script needs to be run as an administrator.
    pause
    exit /b
)

set "startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

if exist "%startupPath%\TARGET.lnk" (
    del /Q "%startupPath%\TARGET.lnk"
    echo Startup script has been disabled.
) else (
    echo The startup script is already disabled or was never enabled.
)

endlocal
exit /b

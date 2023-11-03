@echo off
setlocal

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo This script needs to be run as an administrator.
    pause
    exit /b
)

if not exist "C:\dbx" mkdir "C:\dbx"
xcopy /E /Y "%~dp0*" "C:\dbx"

set "startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

set "linkPath=%startupPath%\TARGET.lnk"
set "targetPath=c:\Program Files (x86)\Thrustmaster\TARGET\x64\TARGETGUI.exe"
set "args=-r c:\dbx\scripts\dx\main.tmc"

powershell -command "$ws = New-Object -ComObject WScript.Shell; $sc = $ws.CreateShortcut('%linkPath%'); $sc.TargetPath = '%targetPath%'; $sc.Arguments = '%args%'; $sc.Save()"

endlocal
exit /b

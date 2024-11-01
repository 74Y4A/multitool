@echo off
title MultiTool - by 7moodi
chcp 65001 >nul
:start
call :banner
cd files

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%a
echo.
echo.
echo         ╔═(1) bruteforce
echo         ║
echo         ╠══(2) ipscan
echo         ║
echo         ╠═══(3) iptool
echo         ║
echo         ╚╦═══(4) sessionsploit
echo          ║
set /p input=.%BS%      ╚═══════^>
if /I %input% EQU 1 start bruteforce.bat
if /I %input% EQU 2 start ipscan.exe
if /I %input% EQU 2 start iptool.bat
if /I %input% EQU 2 start sessionsploit.exe
cls
goto start
echo
:banner
echo.
echo.
echo                               ██░ ██  ▄▄▄       █    ██  ███▄    █ ▄▄▄█████▓▓█████ ▓█████▄ 
echo                              ▓██░ ██▒▒████▄     ██  ▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒▓█   ▀ ▒██▀ ██▌
echo                              ▒██▀▀██░▒██  ▀█▄  ▓██  ▒██░▓██  ▀█ ██▒▒ ▓██░ ▒░▒███   ░██   █▌
echo                              ░▓█ ░██ ░██▄▄▄▄██ ▓▓█  ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ▒▓█  ▄ ░▓█▄   ▌
echo                              ░▓█▒░██▓ ▓█   ▓██▒▒▒█████▓ ▒██░   ▓██░  ▒██▒ ░ ░▒████▒░▒████▓ 
echo                               ▒ ░░▒░▒ ▒▒   ▓▒█░░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒   ▒ ░░   ░░ ▒░ ░ ▒▒▓  ▒ 
echo                                ▒ ░▒░ ░  ▒   ▒▒ ░░░▒░ ░ ░ ░ ░░   ░ ▒░    ░     ░ ░  ░ ░ ▒  ▒ 
echo                               ░  ░░ ░  ░   ▒    ░░░ ░ ░    ░   ░ ░   ░         ░    ░ ░  ░ 
echo                               ░  ░  ░      ░  ░   ░              ░             ░  ░   ░    
echo                                                                                     ░      
echo.
echo.

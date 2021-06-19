@echo off
cls
echo.
title HELPDESK ICT
mode con: cols=60 lines=36
echo **********************************************
echo *******************        *******************
echo *******************  INFO  *******************
echo *******************        *******************
echo **********************************************
echo.
echo                         Author : Thiago Grillo
echo                         Version: 2.0
echo.
echo %DATE% / %TIME%
echo.
echo ==============================================
echo COMPUTER INFO:
echo.
echo User      : %USERNAME%
set boss=C:\Users\Boss
set admt=C:\Users\Administrator
set admd=C:\Users\Administrador
	
	IF EXIST %boss% (
		ECHO AdmUser   : Boss
	)
	IF EXIST %admt% (
		ECHO AdmUser   : Administrator
	)
	IF EXIST %admd% (
		ECHO AdmUser   : Administrador
	)
echo Domain    : %USERDOMAIN%
echo HelpDesk  : %COMPUTERNAME% 
echo.
echo ==============================================
echo OS INFO:
echo.
wmic os get caption | find "Microsoft"
wmic os get version | find "."
echo.
echo ==============================================
echo.
echo Meu ip  :
ipconfig | find "IPv4" 
echo.
echo ==============================================
echo.
echo.
echo.
echo.
pause >nul
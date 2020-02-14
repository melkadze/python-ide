:setup
@echo off
color 91
title Nick's PyCharm Replacement
cls
goto:start

:start
echo Welcome to Nick's PyCharm replacement.
echo.
echo What do you want to run?
echo [1] Make a new program and open development environment
echo [2] Open development environment with pre-existing program
echo [3] Get information about this program
set /p "choice=>"
if %choice% LSS 0 goto:invalid
if %choice% LEQ 3 goto:%choice%
:invalid
cls
echo ERROR: Please enter a valid option [1, 2, or 3]
goto:start

:0
cls
echo [Secret]
echo.
echo This is a secret section of this program.
echo There might be some cool dev stuff here later down the line.
echo But for now...
echo.
echo.
echo Press any key to return to the program selection...
pause >nul
cls
exit
goto:0

:1
cls
echo [Create Development Environment]
echo.
echo Creating file...
echo. >nick.py
echo Launching file...
start /B notepad nick.py
echo All done.
timeout 1 >nul
goto:2

:2
cls
echo [Launch Development Environment]
echo.
echo Launching program...
:2loop
echo.
python nick.py
echo.
echo -----Press any key to re-run-----
pause >nul
goto:2loop

:3
cls
echo [Get Information]
echo.
echo This program was made to replace PyCharm's frustrating dev environment.
echo Instead, it uses an easily re-runable instance of notepad, saved to a local file.
echo.
echo The program requires python installed to function,
echo and will destroy the local nick.py file if option [1] is selected.
echo.
echo It was made by Nick Melkadze, at:
echo melkadze.com and github.com/melkadze
echo.
echo.
echo Press any key to return to the program selection...
pause >nul
cls
goto:start
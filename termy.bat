@echo off

:start
echo Make sure you are running the terminal as an administrator!
pause
if %1 == install goto install
if %1 == listall goto listall
if %1 == help goto help

:install
echo.
echo Pulling package from URL: raw.githubusercontent.com/AstroMeYT/termy-pr/refs/heads/main/%2.bat
echo Installing...
curl https://raw.githubusercontent.com/AstroMeYT/termy-pr/refs/heads/main/%2.bat --ssl-no-revoke >> C:\Windows\System32\%2.bat
echo.
echo Finished!
cmd.exe

:listall
echo.
echo Pulling list from URL: raw.githubusercontent.com/AstroMeYT/termy-pr/refs/heads/main/allpacks.txt
curl https://raw.githubusercontent.com/AstroMeYT/termy-pr/refs/heads/main/allpacks.txt --ssl-no-revoke
cmd.exe

:help
echo.
echo Termy is a simple package manager from the command line on Windows.
echo Version:                 1.0.0
echo Version creation date:   10/13/24
echo.
echo install (package name) ............... Installs a package and makes it executable by typing the name into CMD.
echo.
echo listall .............................. Lists all packages that are in the Termy repository
cmd.exe
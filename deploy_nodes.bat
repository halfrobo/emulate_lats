<<<<<<< HEAD
@echo off
if EXIST "%programfiles%\swipl" set mynewpath="%programfiles%\swipl\bin\swipl-win.exe"

if EXIST "%programfiles(x86)%\swipl" set mynewpath="%programfiles(x86)%\swipl\bin\swipl-win.exe"
set /a port = 7001

:while1
	START "swipl" %mynewpath% -q -s "init.pl" -g main(localhost,%port%,5656,localhost,6666)

set /a port = %port% + 1
	
if %port% leq 7007 goto :while1
=======
@echo off
if EXIST "%programfiles%\swipl" set mynewpath="%programfiles%\swipl\bin\swipl-win.exe"

if EXIST "%programfiles(x86)%\swipl" set mynewpath="%programfiles(x86)%\swipl\bin\swipl-win.exe"
set /a port = 7001

:while1
	START "swipl" %mynewpath% -q -s "init.pl" -g main(localhost,%port%,5656,localhost,6666)

set /a port = %port% + 1
	
if %port% leq 7007 goto :while1
>>>>>>> e9bd53506e20b1edb5ed5b12ff3a299e74652b37

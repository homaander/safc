@echo on

setlocal enableExtensions
setlocal enableDelayedExpansion

chcp 65001 > nul

set App=%~dpnx0
set App.name=%~nx0
set App.path=%~dp0

title Game
color F0

:: Safc
set Safc.libs=render

set Render.path=img\default
set Render.file=map house

safc\autoload 2> nul

:App
    :: Render
    echo lol
exit /b

:App.print [msg][var]
    echo --%*--
exit /b

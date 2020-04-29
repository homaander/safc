@echo off

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

:: Render
set Render.path=img\default
set Render.file=map

safc\autoload 2> nul

:App
    :: Render
    call :Render.start
    call :Render.print map

    pause > nul
exit /b

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

:Debug [level][msg]
    cls

    if '%1'=='notice' color F1
    if '%1'=='warn'   color F6
    if '%1'=='error'  color FC

    echo Debug:
    echo.    Message: %2

    pause > nul
exit /b

:Render.start
    set map0=█████████████████████████
    set map1=█                       █
    set map2=█                       █
    set map3=█                       █
    set map4=█                       █
    set map5=█                       █
    set map6=█                       █
    set map7=█                       █
    set map8=█                       █
    set map9=█████████████████████████
    set map=10

exit /b

:Render.print [name]
    set /a Render.i = !%1! - 1

    for /l %%i in (0,1,%Render.i%) do (
        echo !%1%%i!
    )
exit /b


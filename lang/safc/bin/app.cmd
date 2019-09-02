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

:Debug [level][msg]
    cls

    if '%1'=='notice' color F1
    if '%1'=='warn'   color F6
    if '%1'=='error'  color FC

    echo Debug:
    echo.    Message: %2

    pause > nul
exit /b

:Img
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

    set house0= /\
    set house1=/__\
    set house2=|  |
    set house3=|__|

exit /b

:Render
    setlocal
        for %%a in (%Render.img%) do (
            set var=%%a
            >> %App.name% (
                echo :!var!.print
                echo.    echo hello world!
                echo exit /b
                echo.
            )
        )  

    endlocal
exit /b

:Render.end
    pause > nul
    echo.
    for %%a in (%Render.begins%) do (
        set /a %%a.line+=1
    )  
exit /b


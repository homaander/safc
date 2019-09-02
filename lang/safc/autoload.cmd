:Autoload [path]

    if "%Safc.libs%"=="" if "%Safc.use%"=="" call safc\debug notice "Нет подключённых библиотек"

    (
        type %App.name%
        echo.
        type safc\debug.cmd
        echo.
    ) > safc\bin\%App.name% 

    for %%i in (%Safc.libs%) do (
        if exist safc\lib\%%i_load.cmd call safc\lib\%%i_load

        (
            type safc\lib\%%i.cmd
            echo.
        ) >> safc\bin\%App.name%
    )

    for %%i in (%Safc.use%) do (
        (
            type %%i.cmd
            echo.
        ) >> safc\bin\%App.name%
    )

    cd safc\bin
    %App.name%

exit /b

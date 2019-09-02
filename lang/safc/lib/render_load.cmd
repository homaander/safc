:Render_Load
    echo :Img>> safc\bin\%App.name%

    for %%a in (%Render.file%) do (
        set Render.index=0
        for /f "tokens=* delims=" %%b in (safc\%Render.path%\%%a.txt) do (
            echo.    set %%a!Render.index!=%%b>> safc\bin\%App.name%
            set /a Render.index += 1
        )
        echo.>> safc\bin\%App.name%
    )

    (
        echo exit /b
        echo.
    ) >> safc\bin\%App.name%
exit /b
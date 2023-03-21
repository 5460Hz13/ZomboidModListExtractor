@echo off

REM set the directory you want to search in
set "directory=D:\SteamLibrary\steamapps\common\ProjectZomboid\mods"

REM set the output file name
set "output=outputIDs.txt"

REM create or clear the output file
type nul > "%output%"

REM loop through each folder in the directory
for /d %%f in ("%directory%\*") do (
    REM check if the folder has a "mods" subdirectory
    if exist "%%f\mods" (
        REM loop through each folder in the "mods" subdirectory
        for /d %%g in ("%%f\mods\*") do (
            REM check if the folder has a "mod.info" file
            if exist "%%g\mod.info" (
                REM extract the "id" value from the "mod.info" file and write it to the output file
                for /f "tokens=2 delims==" %%i in ('findstr /i "id=" "%%g\mod.info"') do (
                    set /p id=%%i;<NUL >> "%output%"
                )
            )
        )
    )
)

REM add a final newline to the output file
echo. >> "%output%"
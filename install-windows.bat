@echo off
REM Installs the Movie Maker templates into DaVinci Resolve (Windows).
REM Close DaVinci Resolve before running, then reopen it afterwards.
setlocal
set "DEST=%APPDATA%\Blackmagic Design\DaVinci Resolve\Support\Fusion\Templates\Edit"
set "SRC=%~dp0"

for %%T in (Transitions Titles Effects) do (
    if not exist "%DEST%\%%T\Movie Maker" mkdir "%DEST%\%%T\Movie Maker"
    copy /Y "%SRC%%%T\Movie Maker\*.setting" "%DEST%\%%T\Movie Maker\" >nul
    echo Installed %%T
)
echo.
echo Done! Restart DaVinci Resolve and look for "Movie Maker" in the Effects Library.
pause

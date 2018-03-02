@echo off

if "%1"=="" (
    echo Usage:
    echo   %0 [Input Video] [Output Audio]
    echo.
    echo Example:
    echo   %0 input.mp4 output.m4a
) else (
    ffmpeg -i "%1" -vn -acodec copy %2.m4a
)

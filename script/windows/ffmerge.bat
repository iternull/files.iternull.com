@echo off

if "%1"=="" (
    echo Usage:
    echo   %0 [Input Video] [Input Audio]
    echo.
    echo Example:
    echo   %0 input.mp4 input.m4a
) else (
    ffmpeg -i "%1" -i "%2" -vcodec copy -acodec aac output_marge.mp4
)

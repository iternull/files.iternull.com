@echo off

if "%1" == "" (
    echo Usage:
    echo   %0 [Input Video] [Output Video]
    echo.
    echo Example:
    echo   %0 input.m3u8 output
) else (
    ffmpeg -i "%1" -c copy -bsf:a aac_adtstoasc %2.mp4
)

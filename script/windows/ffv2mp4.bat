@echo off

if "%1"=="" (
    echo Usage:
    echo   %0 [Input Video] [Output MP4 Video]
    echo.
    echo Example:
    echo   %0 input.flv output.mp4
) else (
    ffmpeg -i "%1" -c:v libx264 "%1".mp4
    :: ffmpeg -i "%1" -vcodec copy "%1".mp4
)

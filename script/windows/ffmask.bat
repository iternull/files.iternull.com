@echo off
::ffmpeg -i "%1" -vf "movie="%2",scale=80:80[watermask];[in][watermask]overlay=main_w-overlay_w-10:10[out]" output_watermask.mp4
::ffmpeg -i "%1" -i "%2" -filter_complex "[1:v]scale=40:40[watermask];[0:v][watermask]overlay=main_w-overlay_w-10:10" output_watermask.mp4

if "%3"=="720p" (
    ffmpeg -i "%1" -vf "movie="%2",scale=40:40[watermask];[in][watermask]overlay=main_w-overlay_w-10:10[out]" output_watermask.mp4
)

if "%3"=="1080p" (
    ffmpeg -i "%1" -vf "movie="%2",scale=60:60[watermask];[in][watermask]overlay=main_w-overlay_w-20:20[out]" output_watermask.mp4
)

if "%3"=="2k" (
    ffmpeg -i "%1" -vf "movie="%2",scale=80:80[watermask];[in][watermask]overlay=main_w-overlay_w-30:30[out]" output_watermask.mp4
)

if "%3"=="4k" (
    ffmpeg -i "%1" -vf "movie="%2",scale=100:100[watermask];[in][watermask]overlay=main_w-overlay_w-40:40[out]" output_watermask.mp4
)

if "%3" NEQ "720p" if "%3" NEQ "1080p" if "%3" NEQ "2k" if "%3" NEQ "4k" (
    echo Usage:
    echo   %0 [Video] [PNG Image] [720p 1080p 2k 4k]
    echo.
    echo   [720p 1080p 2k 4k] is the original video pixel
    echo.
    echo Example:
    echo   %0 VID_0001.mp4 seal_0.png 1080p
)

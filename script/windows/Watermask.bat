@echo off

set video=
set /p video=Input Video []: 

set img=Yinzhang.png
set /p img=Watermask Image [Yinzhang.png]: 

set pixel=1080p
set /p pixel=Original video pixel [1080p]: 

::echo Video is: %video%
::echo Image is: %img%

::ffmpeg -i "%video%" -vf "movie="%img%",scale=60:60[watermask];[in][watermask]overlay=main_w-overlay_w-20:20[out]" %video%_watermask.mp4

if "%pixel%"=="720p" (
    ffmpeg -i "%video%" -vf "movie="%img%",scale=40:40[watermask];[in][watermask]overlay=main_w-overlay_w-10:10[out]" %video%_watermask.mp4
)
if "%pixel%"=="1080p" (
    ffmpeg -i "%video%" -vf "movie="%img%",scale=60:60[watermask];[in][watermask]overlay=main_w-overlay_w-20:20[out]" %video%_watermask.mp4
)
if "%pixel%"=="2k" (
    ffmpeg -i "%video%" -vf "movie="%img%",scale=80:80[watermask];[in][watermask]overlay=main_w-overlay_w-30:30[out]" %video%_watermask.mp4
)
if "%pixel%"=="4k" (
    ffmpeg -i "%video%" -vf "movie="%img%",scale=100:100[watermask];[in][watermask]overlay=main_w-overlay_w-40:40[out]" %video%_watermask.mp4
)

pause

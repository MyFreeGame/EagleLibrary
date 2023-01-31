@echo off
set exevar="C:\Program Files\ImageMagick-7.1.0-Q16-HDRI\magick.exe"
for /f "usebackq tokens=*" %%d in (`dir /s /b *.png`) do (
%exevar% "%%d" "%%~dpnd_Alpha.png" -alpha off -compose copyopacity -composite "%%~dpnd_out.png"
)
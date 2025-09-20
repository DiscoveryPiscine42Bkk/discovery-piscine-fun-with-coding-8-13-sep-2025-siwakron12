@echo off
setlocal EnableDelayedExpansion

set output=

for /f "delims=" %%i in ('dir /b /a:-h') do (
    set name=%%i
    set "firstChar=!name:~0,1!"
    if not "!firstChar!"=="." (
        if defined output (
            set "output=!output!,%%i"
        ) else (
            set "output=%%i"
        )
    )
)

echo !output!
@echo off
setlocal enabledelayedexpansion

rem Loop through all .jpg files recursively
for /r %%f in (*.jpg) do (
    rem Extract the file name without extension
    set "filename=%%~nf"
    echo Processing file: "%%f"
    
    rem Remove numbers after the last dash
    for /f "tokens=1,* delims=-" %%a in ("!filename!") do (
        set "basename=%%a"
    )
    echo Extracted basename: !basename!

    rem Create the "ordered" directory if it doesn't exist
    mkdir "ordered" 2>nul
    
    rem Create the subdirectory under "ordered"
    mkdir "ordered\!basename!" 2>nul
    echo Created directory: "ordered\!basename!"
    
    rem Move the matching .jpg files to the corresponding subdirectory
    move "%%f" "ordered\!basename!\" >nul
    echo Moved "%%f" to "ordered\!basename!"
)

echo Processing complete.
endlocal
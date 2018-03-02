@echo off

MKDIR tmp
mv *\(1\).* tmp
mv *\(2\).* tmp
mv *\(3\).* tmp
mv *\(4\).* tmp
mv *\(5\).* tmp
mv *\(6\).* tmp

::if "%1"=="" (
::    echo Usage:
::    echo   %0 [Path]
::    echo.
::    echo Example:
::    echo   %0 .
::) else (
::    echo OK 2
::    MKDIR tmp
::    mv *\(1\).* tmp
::    mv *\(2\).* tmp
::    mv *\(3\).* tmp
::    mv *\(4\).* tmp
::    mv *\(5\).* tmp
::    mv *\(6\).* tmp
::)
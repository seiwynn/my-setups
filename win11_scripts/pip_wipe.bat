@echo off
SETLOCAL EnableDelayedExpansion
@REM This script will uninstall all packages installed in the current Python environment.
@REM It will not touch packages installed in other environments/versions/conda.
@REM TYVM ChatGPT

echo Gathering installed packages...
pip freeze > temp.txt

echo Uninstalling packages...
for /F "delims=" %%i in (temp.txt) do (
    echo Uninstalling %%i...
    pip uninstall -y %%i
)

echo Cleanup...
del temp.txt

echo All packages have been uninstalled.

@REM originally from a gist that I keep: 
@REM https://gist.github.com/seiwynn/043fe1cf664ef7da27b073f4237b4ff9
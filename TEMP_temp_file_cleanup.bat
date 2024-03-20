@echo off

echo Please wait while the script deletes your Temporary data...

del /q /f /s %TEMP%\*

echo Cleanup is done
@echo off
echo Starting image scan and repair at %time% %date%
dism /Online /Cleanup-Image /RestoreHealth
echo Finished restoring the health of the system image
pause

echo Beginning to scan the system drive for corrupt Windows files...
sfc /scannow
pause

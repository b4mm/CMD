@echo off
echo WARNING!!! This process will require a restart to complete!
pause

echo Checking online data base for known good copies of system files

dism /Online /Cleanup-Image /CheckHealth
echo Finished referencing online database of the Windows system files
pause

dism /Online /Cleanup-Image /ScanHealth
echo Finished scanning image health
pause 

dism /Online /Cleanup-Image /RestoreHealth
echo Finished restoring the health of the system image
pause

echo Beginning to scan the system drive for corrupt Windows files...
sfc /scannow

echo To continue the repairing process, please enter "Y" when prompted and restart your computer. 
echo Repairing the system files may take anywhere from 20 to 30 minutes.
pause
chkdsk /R
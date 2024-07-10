::Syncs Windows time to the Windows time server. 
w32TM /config /syncfromflags:manual /manualpeerlist:time.windows.com
w32tm /config /update
w32tm /resync

ipconfig /flushdns

taskkill /f /IM AzVpnAppx.exe

net stop RasMan && net start RasMan

pause

start "C:\Program Files\WindowsApps\Microsoft.AzureVpn_3.3.1.0_x64__8wekyb3d8bbwe\AzVpnAppx.exe"
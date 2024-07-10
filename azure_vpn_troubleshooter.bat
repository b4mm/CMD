::Syncs Windows time to the Windows time server. 
w32TM /config /syncfromflags:manual /manualpeerlist:time.windows.com
w32tm /config /update
w32tm /resync

ipconfig /flushdns

taskkill /f /IM AzVpnAppx.exe

::Restarts Remote Access Manager service.
net stop RasMan && net start RasMan

::Next line of instructions might change depending on which version of the Azure VPN Client application is installed. 
start "C:\Program Files\WindowsApps\Microsoft.AzureVpn_3.3.1.0_x64__8wekyb3d8bbwe\AzVpnAppx.exe"

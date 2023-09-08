#install adk
cd "C:\asd\Windows Kits\10\ADK"

start-Process -FilePath adksetup.exe -ArgumentList "/s" -Wait
#install adkpe
cd "C:\asd\Windows Kits\10\ADKWinPEAddons"

start-Process -FilePath adkwinpesetup.exe -ArgumentList "/s" -Wait


#install MDT, before that you need install ADK
$mdtInstallerPath = "C:\asd\mdt.msi"
Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$mdtInstallerPath`" /quiet /norestart" -Wait


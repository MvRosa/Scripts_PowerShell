Write-Host -ForegroundColor Green "Iniciando Script..."
""

Write-Host "Capture current free disk space on Drive C" -foreground yellow
    $FreespaceBefore = (Get-WmiObject win32_logicaldisk -filter "DeviceID='C:'" | Select-Object Freespace).FreeSpace/1GB

Write-Host -ForegroundColor Green "Parando Servico do Windows Update"
Get-Service -Name wuauserv | Stop-Service -Force -verbose -ErrorAction SilentlyContinue

""
#Clear Internet Explorer + TEMP Windows
Write-Host -ForegroundColor Green "Limpando Internet Explorer + Windows TEMP..."
Write-Host -ForegroundColor cyan
    Get-ChildItem "C:\*.tmp" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Windows\SoftwareDistribution\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Windows\Temp\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Windows\prefetch\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\inetpub\logs\LogFiles\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Temp" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\WER\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\IECompatCache\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\IECompatUaCache\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\IEDownloadHistory\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\INetCache\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\History\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\INetCookies\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Terminal Server Client\Cache\*" -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue

#Clear Mozilla Firefox Cache
Write-Host -ForegroundColor Green "Limpando FireFox..."
Write-Host -ForegroundColor cyan
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache\*.*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache2\entries\*.*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\thumbnails\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cookies.sqlite" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\webappsstore.sqlite" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\chromeappsstore.sqlite" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue

#Clear Google Chrome 
Write-Host -ForegroundColor Green "Limpando Google Chrome..."
Write-Host -ForegroundColor cyan
    Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache2\entries\*" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cookies" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Media Cache" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue
    Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cookies-Journal" -Recurse -Force -verbose -ErrorAction SilentlyContinue | Remove-Item -Force -Verbose -Recurse -ErrorAction SilentlyContinue

#Clear Recyclen.Bin
Write-Host -ForegroundColor Green "Limpando Recycle.Bin..."
$disk = Get-WmiObject Win32_LogicalDisk -Filter "DriveType=3"
foreach ($disk in $disks) {
$rbpathnew = "$($disk.DeviceID)\'$Recycle.Bin"  
if (Test-Path $rbpathnew) { cmd /c "rd /s /q $rbpathnew" } }

""
Write-Host -ForegroundColor Green "Iniciando Servico do Windows Update"
Get-Service -Name wuauserv | Start-Service -Verbose
""
Write-Host -ForegroundColor yellow "Finalizado"

Write-host "Uso de disco antes e depois da limpeza" -foreground yellow
    $FreespaceAfter = (Get-WmiObject win32_logicaldisk -filter "DeviceID='C:'" | Select-Object Freespace).FreeSpace/1GB
    "Espaco Livre Antes: {0:N2}" -f $FreespaceBefore
    "Espaco Livre Depois: {0:N2}" -f $FreespaceAfter
    
""
Write-Host -ForegroundColor Green "Todas limpezas executadas."
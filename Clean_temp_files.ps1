<# 
.NAME
    Limpeza de arquivos temporarios
.EXAMPLE
    PS C:\adrt> .\Clean_temp_files.ps1
.NOTES
    Name: Marcus Rosa
	E-mail: mvrosa@outlook.com.br
.LINK
	GitHub: https://github.com/mvrosa
#>

# Clear Firefox Cache
Write-Host -ForegroundColor Green "Clearing Firefox Cache`n"

    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache2\entries\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\thumbnails\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\cookies.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\webappsstore.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\chromeappsstore.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default\OfflineCache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\cache2\entries\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\thumbnails\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\cookies.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\webappsstore.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\chromeappsstore.sqlite" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\OfflineCache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"


# Clear Google Chrome
Write-Host -ForegroundColor Green "Clearing Google Chrome Cache`n"

    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache2\entries\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cookies" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Media Cache" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cookies-Journal" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    #Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\JumpListIconsOld" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cache2\entries\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose 
    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cookies" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Media Cache" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cookies-Journal" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Google\Chrome\User Data\*\JumpListIconsOld" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"


# Clear Internet Explorer & Edge
Write-Host -ForegroundColor Yellow "Clearing Internet Explorer & Edge Cache`n"

    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Windows\INetCache\* " -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Windows\WebCache\* " -Recurse -Force -ErrorAction SilentlyContinue -Verbose

    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cache2\entries\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose 
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cookies" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Media Cache" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cookies-Journal" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\JumpListIconsOld" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"

# Clear Chromium
        Remove-Item -Path "C:\Users\*\AppData\Local\Chromium\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
        Remove-Item -Path "C:\Users\*\AppData\Local\Chromium\User Data\Default\GPUCache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
        Remove-Item -Path "C:\Users\*\AppData\Local\Chromium\User Data\Default\Media Cache" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
        Remove-Item -Path "C:\Users\*\AppData\Local\Chromium\User Data\Default\Pepper Data" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
        Remove-Item -Path "C:\Users\*\AppData\Local\Chromium\User Data\Default\Application Cache" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    
    Write-Host -ForegroundColor Yellow "Done...`n" 


# Clear Firefox Cache
Write-Host -ForegroundColor Green "Clearing Terminal Server Cache Cache`n"

    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Terminal Server Client\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"


Write-Host -ForegroundColor Yellow "Clearing User Temp Folders`n"

    Remove-Item -Path "C:\Users\*\AppData\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Windows\WER\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\Microsoft\Windows\AppCache\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Users\*\AppData\Local\CrashDumps\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"


Write-Host -ForegroundColor Yellow "Clearing Windows Temp Folder`n"
    
    Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\Windows\Logs\CBS\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Remove-Item -Path "C:\ProgramData\Microsoft\Windows\WER\*" -Recurse -Force -ErrorAction SilentlyContinue -Verbose

Write-Host -ForegroundColor Yellow "Done...`n"


Write-Host -ForegroundColor Yellow "Clearing RecycleBin`n"
    
    Clear-RecycleBin -Force

Write-Host -ForegroundColor Yellow "Done...`n"


Write-Host -ForegroundColor Yellow "Restarting Windows Update Service and Deleting SoftwareDistribution Folder`n"
    # Stop the Windows Update service
    try {
        Stop-Service -Name wuauserv
    }
    catch {
        $ErrorMessage = $_.Exception.Message
        Write-Warning "$ErrorMessage" 
    }
    # Delete the folder
    Remove-Item "C:\Windows\SoftwareDistribution" -Recurse -Force -ErrorAction SilentlyContinue -Verbose
    Start-Sleep -s 3

    # Start the Windows Update service
    try {
        Start-Service -Name wuauserv
    }
    catch {
        $ErrorMessage = $_.Exception.Message
        Write-Warning "$ErrorMessage" 
    }
Write-Host -ForegroundColor Yellow "Done..."
Write-Host -ForegroundColor Yellow "Please rerun Windows Update to pull down the latest updates `n"

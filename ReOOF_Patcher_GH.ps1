# ReOOF! A user-friendly Powershell based SFX patcher for Roblox Windows!
# Made by twitter.com/the_steb 
# GitHub repo: https://github.com/steb-git/reoof
# Feel free to change, remix, modify and and use this on your projects as you wish! However, distributing it without attribution is not cool. (Protected by the MIT license (https://opensource.org/licenses/MIT))

# very cheesy ascii art here vvv
Write-Host '██████╗ ███████╗ ██████╗  ██████╗ ███████╗██╗' -ForegroundColor DarkBlue
Start-Sleep -Seconds 0.02
Write-Host '██╔══██╗██╔════╝██╔═══██╗██╔═══██╗██╔════╝██║' -ForegroundColor Cyan
Start-Sleep -Seconds 0.02
Write-Host '██████╔╝█████╗  ██║   ██║██║   ██║█████╗  ██║' -ForegroundColor White
Start-Sleep -Seconds 0.02
Write-Host '██╔══██╗██╔══╝  ██║   ██║██║   ██║██╔══╝  ╚═╝' -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.02
Write-Host '██║  ██║███████╗╚██████╔╝╚██████╔╝██║     ██╗' -ForegroundColor DarkBlue
Write-Host
# CLI texts for user, serves as pre-execution sequence for invoke-webrequest procedure to inform user
Write-Host 'ReOOF - a user-friendly SFX patcher for Roblox Windows.' -ForegroundColor Yellow
Write-Host 'Written by @the_steb on Twitter :D (dsc: the_steb#0831)' -ForegroundColor Cyan
Write-Host 'GitHub Repository Link: https://github.com/steb-git/reoof'
Start-Sleep -Seconds 0.5
Write-Host 'Version 1.00'
Write-Host  
Start-Sleep -Seconds 1.5

# EXPERIMENTAL - if device runs roblox on a non-windows, unix based machine, script will use workaround through getuiservice on linux
# This requires PowerShell 7 from ubuntu software or apt-get, first tested on ubuntu on winebased roblox
if ({$OsType -eq "Linux"}) {
        Write-Host 'Oof! Looks like you are trying to run this installer on a Linux machine. This has to be executed on a Windows based machine.' -ForegroundColor Magenta
        Write-Host
        Start-Sleep -Seconds 0.5
        Write-Host 'Press any key to exit.'
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
        exit
}
# lmao i ended up tying up support for linux machines
else {}
# Windows version checker, since Windows PCs running at Win7 and below would not work with this script.
if ([System.Environment]::OSVersion.Version | Where-Object -FilterScript {($_.Major -match "12" -or "11" -or "8" -or "8.1")}) {}
    else {
        Write-Host 'Oof! This installer does not support this version of Windows anymore. You might consider upgrading your Windows PC or try this script instead on a Computer that runs on Windows 8, 8.1, 10 or 11.' -ForegroundColor Magenta
        Write-Host
        Start-Sleep -Seconds 0.5
        Write-Host 'Press any key to exit.'
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
        exit
    }
# Roblox installation evaluation gate, prevents from proceeding if no installation of roblox exists.
Write-Host 'Searching for local Roblox client installations on this computer...'
Start-Sleep -Seconds 1.9
$Folder = '~\AppData\Local\Roblox'
if (Test-Path -Path $Folder) {
    Write-Host 'Active Roblox installation found!' -ForegroundColor Green
    Write-Host
    Start-Sleep -Seconds 0.95
} else {
    Write-Host '> ERROR: Roblox must be installed in order to proceed with the Installation.' -ForegroundColor Red
    Write-Host 'You may download Roblox at https://roblox.com/home'
    Write-Host
    Start-Sleep -Seconds 0.5
    Write-Host 'Press any key to exit.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}
Write-Host 'Checking your internet connectivity before proceeding to the installation process...'
# Internet detection gate, prevents from proceeding if device has not established any connection to any access point
Start-Sleep -Seconds 2.7
If ((Get-NetConnectionProfile).IPv4Connectivity -contains "NoTraffic" -or (Get-NetConnectionProfile).IPv6Connectivity -contains "NoTraffic") {
    Write-Host '> ERROR: Looks like you are having connectivity issues. We cannot reach the remote server and will only continue once connected to the Internet. ' -ForegroundColor Red
    Start-Sleep -Seconds 1
    Write-Host 'Press any key to exit.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}
# Internet detection gate 2, workaround for detached network adapters, suffices get-netconnectionprofile detection restrictions
# I had to put two of these to properly detect internet detection, might be buggy!
if (Get-NetAdapter -Physical | Where-Object -FilterScript {($_.Name -contains 'Wi-Fi' -and $_.Name -contains 'Ethernet' -and $_.Status -eq 'Disconnected')}) {
    Write-Host '> Gate 2 ERROR: Looks like you are having connectivity issues. We cannot reach the remote server and will only continue once connected to the Internet. ' -ForegroundColor Red
    Start-Sleep -Seconds 1
    Write-Host 'Press any key to exit.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}
# Crucial filesystem declrs, do not remove or pwsh will commit software crash
# This part will only run once it passes internet detection tests
Write-Host 'You are now connected! Starting installation...' -ForegroundColor Green
set-location -path $env:USERPROFILE\AppData\Local\Roblox\Versions
# This part is very important, installs the sound file on the most recent roblox version. If this gets missyntaxed, the installer is ruined.
Get-ChildItem -in *version* | Where-Object { $_.PSIsContainer } | Sort-Object CreationTime -desc | Select-Object -f 1 | Set-Location
set-Location -path sounds
Invoke-WebRequest -uri "https://cdn.bloxposting.me/ouch.ogg" -OutFile ( New-Item -Path "ouch.ogg" -Force ) -Verbose
Write-Host File successfully downloaded! 
Start-Sleep -Seconds 0.5
Write-Host Checking files...
Write-Host
Get-ChildItem
Write-Host ------------------------------ -ForegroundColor Yellow
Write-Host
# Debbuging use, so i dont have to do cd all over again on my ISE, feelsawful.png
Set-Location -Path ~
Write-Host 'Congratulations! Your sound effect has been changed and you may launch Roblox.' -ForegroundColor Green
Start-Sleep -Seconds 0.95
Write-Host 'Note: You would need to rerun this script again after each Roblox update. But for now, you are all set!'
Write-Host
Start-Sleep -Seconds 0.5
Write-Host --------------------------- -ForegroundColor Magenta
Write-Host !   'Press any key to exit.'   !
Write-Host --------------------------- -ForegroundColor Magenta
# Debug purposes, doing cd all over again feelsawfulman.png D:
Set-Location -Path ~\git\reoof
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

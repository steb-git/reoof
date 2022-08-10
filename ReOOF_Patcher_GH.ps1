#ReOOF! A user-friendly Powershell based SFX patcher for Roblox Windows!
#Made by twitter.com/the_steb 
#GitHub repo: https://github.com/steb-git/reoof
#Feel free to change, remix, modify and and use this on your projects as you wish! However, distributing it without attribution is not cool. (Protected by the MIT license (https://opensource.org/licenses/MIT))

#very cheesy ascii art here vvv
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
#cli texts for user, serves as pre-execution sequence for invoke-webrequest procedure to inform user
Start-Sleep -Seconds 2
Write-Host 'ReOOF - a user-friendly SFX patcher for Roblox Windows.' -ForegroundColor Yellow
Write-Host 'Written by @the_steb on Twitter :D (dsc: the_steb#0831)' -ForegroundColor Cyan
Write-Host 'GitHub Repository Link: https://github.com/steb-git/reoof'
Start-Sleep -Seconds 0.5
Write-Host 'Version 1.00'
Write-Host  
Start-Sleep -Seconds 1.5
#roblox installation evaluation gate, prevents from proceeding if no installation of roblox exists.
Write-Host 'Scannning for Roblox client installations on this computer...'
Start-Sleep -Seconds 1.9
$Folder = '~\AppData\Local\Roblox'
if (Test-Path -Path $Folder) {
    Write-Host 'Active Roblox installation found!' -ForegroundColor Green
    Write-Host
    Start-Sleep -Seconds 0.95
} else {
    Write-Host '> ERROR: Roblox must be installed in order to proceed with the Installation.'
    Write-Host 'You may download Roblox at https://roblox.com/home'
    Write-Host
    Start-Sleep -Seconds 1
    Write-Host 'Press any key to exit.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}
Write-Host 'Checking your internet connectivity before proceeding to the installation process...'
#internet detection gate, prevents from proceeding if device has not established any connection to any access point
Start-Sleep -Seconds 2.7
If ((Get-NetConnectionProfile).IPv4Connectivity -contains "Disconnected" -or (Get-NetConnectionProfile).IPv6Connectivity -contains "Disconnected") {
    Write-Host -NoNewLine '> ERROR: Looks like you are having connectivity issues. We cannot reach to the remote server and will only continue once connected to the Internet. '
    Start-Sleep -Seconds 1
    Write-Host 'Press any key to exit.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}
#crucial filesystem declrs, do not remove or pwsh will commit software crash
#This part will only run once it passes internet detection tests
Write-Host 'You are now connected! Starting installation...' -ForegroundColor Green
set-location -path $env:USERPROFILE\AppData\Local\Roblox\Versions
#This part is very important, installs the sound file on the most recent roblox version. If this gets missyntaxed, the installer is ruined.
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
Write-Host 'Congratulations! Your sound effect has been changed and you may launch Roblox.' -ForegroundColor Green
Start-Sleep -Seconds 0.95
Write-Host 'Note: You would need to rerun this script again after each Roblox update. But for now, you are all set!'
Write-Host
Start-Sleep -Seconds 0.5
Write-Host --------------------------- -ForegroundColor Magenta
Write-Host !   'Press any key to exit.'   !
Write-Host --------------------------- -ForegroundColor Magenta
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
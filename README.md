# @steb-git/reoof
    
     ██████╗ ███████╗ ██████╗  ██████╗ ███████╗██╗
     ██╔══██╗██╔════╝██╔═══██╗██╔═══██╗██╔════╝██║
     ██████╔╝█████╗  ██║   ██║██║   ██║█████╗  ██║
     ██╔══██╗██╔══╝  ██║   ██║██║   ██║██╔══╝  ╚═╝
     ██║  ██║███████╗╚██████╔╝╚██████╔╝██║     ██╗

A user-friendly Powershell based SFX patcher for Roblox Windows  
Made by [@the_steb](https://twitter.com/the_steb) on Twitter

This is a simple SFX Patcher for Roblox on Windows based Roblox clients with value detection gates added as a backend feature (Network Detection, OS Filters, Directory Check).

It originally aims to restore the old ouch.ogg sound effect on Roblox where it was recently replaced with a [newer *ugly* version of the sound effect.](https://www.youtube.com/watch?v=rok4FpHzZ20)  
How it works is it uses native automation that PowerShell delivers to automatically execute these commands at once.

## Installation

Installation is simple, you may clone this repository on your computer using `git`
#### **HOLD UP!** Unless if you know what you're doing, do not run these steps on a PowerShell terminal with Administrator privileges!

Requires `scoop` or `choco` as  package managers to install or clone git repositories on PowerShell.

If you haven't yet installed either one of these two, you may do so by following each package manager's installation docs:  
It is never recommended to install two of these at once, so you have to choose one that you prefer the most.
* [install Chocolatey](https://chocolatey.org/install)
* [install Scoop](https://scoop.sh/)

Once installation is complete, you can install `git` by running this command:

```bash
*for scoop:
scoop install git
---
*for choco:
choco install git
```
once `git` is successfully installed, you can now clone the repository to use it directly:
```git
git clone https://github.com/steb-git/reoof
```
After cloning the repository, you can change the working path of your PowerShell terminal to execute the script:
```bash
cd reoof
```
And finally, run the scipt by inputting:
```bash
./ReOOF_Patcher_GH.ps1
```

### Wait, installation steps is too complicated! D:
Alternatively, If you aren't a fan of CLI and highly-technical stuff and want a quicker, easier way to install this script, you can do these steps:
* [Install the package directly](https://github.com/steb-git/reoof/archive/refs/heads/main.zip) by clicking this hyperlink.
* Extract the `.zip` file that you've just downloaded on any of your preferred folders
* Double click the `ReOOF_Patcher_GH.ps1` file to start the installation.

## Contribution
You can help me amplify my efforts on making reOOF better by 
* [Submitting new feature requests/reporting issues](https://github.com/steb-git/reoof/issues/new)
* [Submitting a Pull Request](https://github.com/steb-git/reoof/compare) and add new additions of the installer code yourself
* **Sharing** the repository with your friends!

## Development Roadmap
With the roadmap, I can take track with the development progress of reOOF, including a checklist of new features.
  ```grub
  [ IMPLEMENTED ] - Network Gates
  [ IMPLEMENTED ] - Operating System gates and filters
  [ IMPLEMENTED ] - Comprehensive repository README page
  [  UPCOMING   ] - Batchscript version porting
  [  UPCOMING   ] - Add user input interface for custom sound effect configs
  [   PLANNED   ] - ReOOF GUI
  ```
___
This project is protected with the [MIT License](https://github.com/steb-git/reoof/blob/main/LICENSE), you can find additional information inside the script's comment lines.
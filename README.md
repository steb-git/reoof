# @steb-git/reoof

![GitHub top language](https://img.shields.io/github/languages/top/steb-git/reoof?style=flat-square&logo=powershell)
![GitHub issues](https://img.shields.io/github/issues/steb-git/reoof?style=flat-square)
![GitHub pull requests](https://img.shields.io/github/issues-pr/steb-git/reoof?style=flat-square)
![GitHub](https://img.shields.io/github/license/steb-git/reoof?color=800000&style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/steb-git/reoof?color=171515&logo=star&style=flat-square)  
![GitHub forks](https://img.shields.io/github/forks/steb-git/reoof?logo=github&style=flat-square)
![GitHub watchers](https://img.shields.io/github/watchers/steb-git/reoof?logo=github&style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/steb-git/reoof?logo=github&style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/steb-git/reoof?logo=github&style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)
![GitHub contributors](https://img.shields.io/github/contributors/steb-git/reoof?style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/steb-git/reoof?style=flat-square)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/steb-git/reoof?style=flat-square)

A user-friendly Powershell based SFX patcher for Roblox Windows  
Made by [@the_steb](https://twitter.com/the_steb) on Twitter

This is a simple SFX Patcher for Roblox on Windows based Roblox clients that reverts back the old Death sound effect with the new one. Plus with value detection gates added as a backend feature (Network Detection, OS Filters, Directory Check).

It originally aims to restore the old ouch.ogg death sound effect on Roblox where it was recently replaced with a [newer *ugly* version of the sound effect.](https://www.youtube.com/watch?v=rok4FpHzZ20)  
How it works is it uses native automation that PowerShell delivers to automatically execute these commands at once.

### Supported Versions:
* PowerShell Core 5 or sooner versions (Although [PowerShell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#winget) is highly reccomended)
* Windows 8
* Windows 8.1
* Windows 10
* Windows 11  

Attempting to run this script with an outdated version of Windows or running this script on a Linux based sytem will otherwise trigger a detection gate that blocks the download process due to compatibility issues.

## Installation

Installation is simple, you may clone this repository on your computer using `git` or by just [jumping here](https://github.com/steb-git/reoof#wait-installation-steps-are-too-complicated-d) if you fancy going shortcuts.
 
**HOLD UP!**  
 Unless if you know what you're doing, __do not run these steps__ on a __PowerShell terminal with Administrator privileges!__ 

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

## Wait, installation steps are too complicated! D:
Alternatively, If you aren't a fan of CLI and highly-technical stuff and want a quicker, easier way to install this script, you can do these steps:
* [Install the package directly](https://github.com/steb-git/reoof/archive/refs/heads/main.zip) by clicking this hyperlink.
* Extract the `.zip` file that you've just downloaded on any of your preferred folders
* Double click the `ReOOF_Patcher_GH.ps1` file to start the installation.

## Contribution
You can help me amplify my efforts on making reOOF better by 
* [Submitting new feature requests/reporting issues](https://github.com/steb-git/reoof/issues/new)
* [Submitting a Pull Request](https://github.com/steb-git/reoof/compare) and add new additions of the installer code yourself
* Talk about new features on our [Discord support server](https://discord.com/invite/4XNhkcd)!
* **Sharing** this repository with your friends who might find this useful, there is strength in numbers! <3  

I am aiming this to be as user-friendly as possible, if some fuzzy elements can't be combed out, you may [submit a new suggestion](https://github.com/steb-git/reoof/issues) on how can i do so!

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
This project is protected by the [MIT License](https://github.com/steb-git/reoof/blob/main/LICENSE), you can find additional information inside the script's comment lines.

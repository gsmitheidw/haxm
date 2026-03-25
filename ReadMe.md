## Chocolatey recipe for deploying Intel HAXM

This is a recipe for creating a Chocoatey nuget package for Intel HAXM:
[https://github.com/intel/haxm](https://github.com/intel/haxm)

https://community.chocolatey.org/packages/haxm/

### Discontinued HAXM

Intel has discontinued HAXM. I'll leave this in maintenace mode pending 
any important changes required, otherwise this will eventually be archived too.


### To localise ###
Code:
```powershell
# clone repo from here:
git clone https://github.com/gsmitheidw/haxm.git
# edit the tools\ChocolateyInstall.ps1 to change the url to local repo/smb share for hosting the zip

# Build nupkg:
choco pack

# Copy the nupkg to a default chocolatey source location or install with --source eg:

choco install haxm --source \\YourLocalRepo\share\

```

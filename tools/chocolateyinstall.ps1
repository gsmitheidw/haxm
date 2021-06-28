$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/intel/haxm/releases/download/v7.7.0/haxm-windows_v7_7_0.zip' 
$setupName  = 'haxm-7.7.0-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'haxm*'
  checksum       = '18DFC2EDF3968ACF20AEA4CFFDB2BDDF7C448DCA03E0B13DDF4FDF039E469A5A'
  checksumType   = 'sha256'
  silentArgs 	 = '/S'          
  validExitCodes = @(0, 3) 
}

Install-ChocolateyZipPackage @packageArgs
$packageArgs.file = Join-Path -Path $toolsDir -ChildPath $setupName
Install-ChocolateyInstallPackage @packageArgs 
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/intel/haxm/releases/download/v7.7.0/haxm-windows_v7_7_0.zip' 
$setupName  = 'haxm-7.7.0-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'Intel® Hardware Accelerated Execution Manager' # HAXM
  checksum       = '88A9B2D51D0DFFA0AD100348EF39DBA451137E730D0F9B6524274B3568368141'
  checksumType   = 'sha256'
  silentArgs 	 = '/S'          
  validExitCodes = @(0) 
}

Install-ChocolateyZipPackage @packageArgs
$packageArgs.file = Join-Path -Path $toolsDir -ChildPath $setupName
Install-ChocolateyPackage @packageArgs 
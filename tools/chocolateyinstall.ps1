
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = ''
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'ssh-copy-id*'
  checksum      = ''
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs

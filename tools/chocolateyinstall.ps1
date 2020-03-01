
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-BinFile -Name ssh-copy-id -Path "$(Join-Path $toolsDir 'ssh-copy-id.cmd')"

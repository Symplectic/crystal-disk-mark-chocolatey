
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://osdn.net/frs/redir.php?m=dotsrc&f=crystaldiskmark%2F68624%2FCrystalDiskMark6_0_2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'CrystalDiskMark*'

  checksum      = '84CCC2DC20E33ABE48E9E452566213EDF36ADF5F308854FA55A9E15FF9EFA2E0'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    









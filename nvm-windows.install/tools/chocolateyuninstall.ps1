$ErrorActionPreference = 'Stop';
$packageName   = 'nvm-windows.install'

$fileType      = 'exe'
$nvmDir        = Join-Path $env:APPDATA 'nvm'
$silentArgs    = '/silent /norestart'
$uninstallFile = Join-Path $nvmDir 'unins000.exe'

Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $uninstallFile

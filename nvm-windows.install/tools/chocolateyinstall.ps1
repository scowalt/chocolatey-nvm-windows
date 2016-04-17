$ErrorActionPreference = 'Stop';
$packageName   = 'nvm-windows.install'

$fileType      = 'exe'
$silentArgs    = '/silent /norestart'
$tempDir       = Join-Path $env:TEMP "$packageName"
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/coreybutler/nvm-windows/releases/download/1.1.0/nvm-setup.zip'
$unzipLocation = Join-Path $tempDir 'unzip'
$setupFile     = Join-Path $unzipLocation 'nvm-setup.exe'

$file = Join-Path $tempDir "$($packageName).zip"
Get-ChocolateyWebFile $packageName $file $url

Write-Host "\/\/\/\/\/\/\/\/"
Write-Host $file
Write-Host "/\/\/\/\/\/\/\/\"
Get-ChocolateyUnzip $file $unzipLocation '' $packageName

Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $setupFile

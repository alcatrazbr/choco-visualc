$packageName = 'visual_c_2015'
$url64 = 'http://xqx.com.br/public/vc_redist.x64.exe'
$url = 'http://xqx.com.br/public/vc_redist.x86.exe'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$validExitCodes = @(0,3010)  # http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$packageArgs = @{
  packageName   = $packageName
  FileType 		= "$installerType"
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  silentArgs    = "/Q"
  ValidExitCodes = $validExitCodes `
  url64bit      = $url64
  url      		= $url
}

Install-ChocolateyPackage @packageArgs
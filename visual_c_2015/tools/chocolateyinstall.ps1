$packageName = 'visual_c_2015'
$url = 'http://xqx.com.br/public/vc_redist.x64.exe'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  silentArgs    = "/S"
  url           = $url
}

Install-ChocolateyPackage @packageArgs
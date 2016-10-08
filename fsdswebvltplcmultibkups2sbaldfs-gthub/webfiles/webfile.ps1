
$targetDirectory = "c:\scratch"
$targetDirectory2 = "c:\zip"
$webdownloadlocation = "https://raw.githubusercontent.com/bytezn/softwaredefined/master/fsdswebvltplcmultibkups2sbaldfs-gthub/webfiles.zip"
New-Item -ItemType Directory -Force -Path $targetDirectory
New-Item -ItemType Directory -Force -Path $targetDirectory2
Invoke-WebRequest -Uri $webdownloadlocation -OutFile $targetDirectory\webfiles.zip
Expand-Archive -Path c:\scratch\webfiles.zip -DestinationPath c:\zip

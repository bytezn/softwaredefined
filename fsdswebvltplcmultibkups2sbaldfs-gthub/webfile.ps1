
$targetDirectory = "c:\scratch"
$webdownloadlocation = "https://raw.githubusercontent.com/bytezn/softwaredefined/master/fsdswebvltplcmultibkups2sbaldfs-gthub/webfiles.zip"
New-Item -ItemType Directory -Force -Path $targetDirectory
Invoke-WebRequest -Uri $webdownloadlocation -OutFile $targetDirectory\webfiles.zip
Expand-Archive -Path $targetDirectory\webfiles.zip -DestinationPath C:\scratch\zip


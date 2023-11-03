$repositoryZipUrl = "https://github.com/uwbfritz/tm-hotas/archive/refs/heads/main.zip" 
$downloadLocation = "$env:TEMP\dbx_latest.zip"
$extractLocation = "C:\dbx_temp"
$finalLocation = "C:\dbx"

# Download the ZIP archive
Invoke-WebRequest -Uri $repositoryZipUrl -OutFile $downloadLocation

# Extract the ZIP archive
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($downloadLocation, $extractLocation)

$rootFolderInZip = Get-ChildItem -Path $extractLocation | Where-Object { $_.PSIsContainer } | Select-Object -First 1
Move-Item -Path "$rootFolderInZip\*" -Destination $finalLocation -Force

# Clean up
Remove-Item -Path $downloadLocation -Force
Remove-Item -Path $extractLocation -Recurse -Force

# Lists files older than a certain date. The next script will remove files older than the certain date.  

# Define the folder path and the cutoff date
$folderPath = "C:\Users\dadaskalopoulos\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Pictures\Screenshots"
$cutoffDate = Get-Date "2023-10-12"

# Get all files in the folder
$files = Get-ChildItem -Path $folderPath -File

# Filter files older than the cutoff date
$oldFiles = $files | Where-Object { $_.LastWriteTime -le $cutoffDate }

if ($oldFiles.Count -gt 0) {
    # Output the list of old files
    $oldFiles | ForEach-Object { $_.FullName }
}

else {
    Write-Host "`nNo files were found older than $cutoffDate were found.`n"
}


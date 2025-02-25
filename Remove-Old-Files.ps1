# Removes files older than a certain date defined in l.5. 

# Define the folder path and the cutoff date
$folderPath = "C:\Users\dadaskalopoulos\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Pictures\Screenshots"
$cutoffDate = Get-Date "2023-10-12"

# Get all files in the folder
$files = Get-ChildItem -Path $folderPath -File

# Filter files older than the cutoff date
$oldFiles = $files | Where-Object { $_.LastWriteTime -lt $cutoffDate }

if ($oldFiles.Count -gt 0) {
    Write-Host "`nThe following files were removed: `n"

    # Output the list of old files
    $oldFiles | ForEach-Object { Remove-Item -Path $_.FullName -Force; Write-Host $_.FullName }
}

else {
    Write-Host "`nNo files were removed."
}

Write-Host "`n"
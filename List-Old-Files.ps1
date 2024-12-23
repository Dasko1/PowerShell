# Lists files older than a certain date. The next file will remove files older than the certain date.  

# Define the folder path and the cutoff date
$folderPath = "C:\Users\dadaskalopoulos\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Pictures\Screenshots"
$cutoffDate = Get-Date "2023-10-10"

# Get all files in the folder
$files = Get-ChildItem -Path $folderPath -File

# Filter files older than the cutoff date
$oldFiles = $files | Where-Object { $_.LastWriteTime -lt $cutoffDate }

# Output the list of old files
$oldFiles | ForEach-Object { $_.FullName }

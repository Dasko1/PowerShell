# Removes a file defined in ll.4-5!

# Define the folder path for the file to be removed!
$folderPath = "C:\temp"
$fileName = "Remove-This.txt"
$filePath = Join-Path -Path $folderPath -ChildPath $fileName

# Remove the file!
Remove-Item -Path $filePath -Force

# Output the result!
Write-Host "`nFile Removed: $fileName`n"
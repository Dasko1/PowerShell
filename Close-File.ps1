# Open a file stream
$filePath = "C:\temp\example.ps1"
$fileStream = [System.IO.File]::Open($filePath, [System.IO.FileMode]::OpenOrCreate, [System.IO.FileAccess]::ReadWrite)

# Perform some operations (e.g., write to the file)
$writer = New-Object System.IO.StreamWriter($fileStream)
$writer.WriteLine("Write-Host '`nHello Powershell!`n'")
$writer.Flush()

# Close the file stream
$writer.Close()
$fileStream.Close()

. C:\temp\example.ps1

# Remove (delete) the file!
Remove-Item -Path $filePath

<#
1. The file stream is opened using [System.IO.File]::Open (l.3).
2. A StreamWriter object is created to write to the file (l.6).
3. The StreamWriter writes a line to the file and flushes the buffer (l.7).
4. Both the StreamWriter and the file stream are closed to release the resources (ll.11-12).
5. The file is executed using the dot operator (l.14).
6. The file is removed using Remove-Item (l.17). 
#>
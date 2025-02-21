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
The file stream is opened using [System.IO.File]::Open.
A StreamWriter object is created to write to the file.
The StreamWriter writes a line to the file and flushes the buffer.
Both the StreamWriter and the file stream are closed to release the resources.
#>
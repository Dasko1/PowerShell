$file = Get-Item "C:\Users\dadaskalopoulos\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Pictures\Screenshots\Duplicates-In-Assign-Historical-Reviewer-Test-User-2.png"
$creationDate = $file.CreationTime
Write-Output "`nThe file was created on: $creationDate" 
$file = Get-Item "C:\Users\dadaskalopoulos\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Pictures\Screenshots\Duplicated-Contract-Review-in-Assigned-User.png"
$creationDate = $file.CreationTime
Write-Output "`nThe file was created on: $creationDate" 
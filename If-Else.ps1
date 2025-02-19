# Define a variable, a number between 0 - 100.
$randomNumber = Get-Random -Minimum 0 -Maximum 101

# If-Else statement
if ($randomNumber -gt 75) {
    Write-Output "The number is greater than 75."
} 

elseif ($randomNumber -gt 25 -and $randomNumber -le 75) {
    Write-Output "The number is between 25 and 75."
} 

else {
    Write-Output "The number is 25 or less."
}

Write-Output "`nThe number actually is: $randomNumber`n"

# Get-Date - of course this will give you the Date; ll.3-4 will just give you the date only. 6 months ago in ll.6-7.

$todayDate = (Get-Date).ToString("M/d/yyyy")
Write-Output "`nToday's date is: $todayDate`n"

$sixMonthsAgo = (Get-Date).AddMonths(-6).ToString("M/d/yyyy")
Write-Output "`nSix months ago was: $sixMonthsAgo`n"

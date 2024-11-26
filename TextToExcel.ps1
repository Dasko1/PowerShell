# Define the paths for the input .txt file and the output .xls file; change paths according to where file is & where you want them.
$txtFilePath = "C:\Users\dadaskalopoulos\Downloads\Enhance-Email-Templates-to-Include-Contract-ID.txt"
$xlsFilePath = "C:\Users\dadaskalopoulos\Downloads\Enhance-Email-Templates-to-Include-Contract-ID.xlsx"

# Create an Excel application object
$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false

# Add a new workbook
$workbook = $excel.Workbooks.Add()

# Get the first worksheet
$worksheet = $workbook.Worksheets.Item(1)

# Open the .txt file and read its content
$lines = Get-Content -Path $txtFilePath

# Split the lines into cells and populate the worksheet
$row = 1
foreach ($line in $lines) {
    $columns = $line -split "`t"                                                # Adjust the delimiter if needed
    $col = 1
    foreach ($column in $columns) {
        $worksheet.Cells.Item($row, $col) = $column
        $col++
    }
    $row++
}

# Save the workbook as an .xlsx file
$workbook.SaveAs($xlsFilePath, 51)                                              # 56 is the Excel 97-2003 Workbook format (.xls); 

# Close the workbook and quit Excel
$workbook.Close($false)
$excel.Quit()

# Release the COM objects
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($worksheet) | Out-Null
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($workbook) | Out-Null
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null

# Collect garbage
[GC]::Collect()
[GC]::WaitForPendingFinalizers()

Write-Output "Conversion complete. The .xlsx file is saved at $xlsFilePath"

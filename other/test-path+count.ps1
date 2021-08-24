$results = @()
$FileList = Get-Content "C:\TEMP\teste.csv"

foreach ($file in $FileList) {
    $path = Test-Path $file
    If ($path -eq $true) {
        $Output = (Get-ChildItem $file).Count
    }
    Else {    
        $Output = "Not Exists"
    }
    $details = @{
        File = $file
        Exist = $Output 
    }
    $results += New-Object PSObject -Property $details  
}

$results | select-object -property File, Exist | Export-csv C:\TEMP\result.csv -NoTypeInformation
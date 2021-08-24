$results = @()
$FileList = Get-Content "C:\TEMP\teste.csv"

foreach ($file in $FileList) {
    $path = Test-Path $file
    If ($path -eq $true) {
        $Output = "SIM"
    }
    Else {    
        $Output = "NAO"
    }
    $details = @{
        Pasta = $file
        Existe = $Output 
    }
    $results += New-Object PSObject -Property $details  
}

$results | select-object -property Pasta, Existe | Export-csv C:\TEMP\result.csv -NoTypeInformation
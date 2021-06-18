<#
 #  relatorio_rdp.ps1
 #
 #	Relatorio de Conexoes via RDP
 #	Extrai o relatorio de todas as conexoes realizada em um ou mais servidores
 #
#>
$htmlfile = ".\reports\relatorio_TS\RelatorioTS10.html"


$hosts = @(
			'TS10'

#			'HOST01',
#			'HOST02',
#			'HOST03',
#			'HOST04'

			)

#$startDate = get-date -UFormat "%d/%m/%Y"
#$endDate = get-date


foreach ($servidor in $hosts) {

    $LogFilter = @{
        LogName = 'Microsoft-Windows-TerminalServices-LocalSessionManager/Operational'
        ID = 21
        #ID = 21, 23, 24, 25
        #21 = LOGON
        #23 = LOGOFF
        #24 = DESCONECTADO
        #25 = RECONECTADO
        StartTime = [datetime]::Today
        }

    $entradas = Get-WinEvent -FilterHashtable $LogFilter -ComputerName $servidor

    $entradas | ForEach-Object { 
           $entrada = [xml]$_.ToXml()
        [array]$saida += New-Object PSObject -Property @{
            Date = $_.TimeCreated.ToString("dd/MM/yyyy HH:mm:ss")
            User = [string]$entrada.Event.UserData.EventXML.User.Replace("MGCONTECNICA\", [string]::Empty)
            Type = "Logon - $servidor"
            }        
           } 

}

$exportar += $saida | Select-Object Date, Type, User

# Formatacao HTML

$style = "<style>"
$style = $style + "BODY{background-color:#F2F2F2;}"
$style = $style + "TABLE{border-width: 1px;border-style: solid;border-color: black;}"
$style = $style + "TH{border-width: 1px;padding: 0px;border-style: solid;border-color: black;background-color:#BDBDBD}"
$style = $style + "TD{border-width: 1px;padding: 5px;border-style: solid;border-color: black;background-color:#D8D8D8}"
$style = $style + "</style>"

# Exportando para HTML:

$exportar | Select-Object Date, Type, User | ConvertTo-Html -head $style -body "<h2>TS10 - BKO_SANTOS</h2>" | Out-File $htmlfile


# Abrindo o HTML
Invoke-Expression $htmlfile
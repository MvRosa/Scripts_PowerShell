Clear-Host
Write-Host '***************************************'
Write-Host '* Fazer logoff do usuario remotamente *'
Write-Host '***************************************'
Write-Host
 

$global:ComputerName = Read-Host 'Servidor'
$global:UserName = Read-Host 'Usuario Name'
Function getSessions {
Write-host
Write-host "Obtendo sessoes de usuario..."
Write-Host
Write-Host '***************************************************************************'
Invoke-Command -scriptBlock {query session /server:$global:ComputerName | Select-String $global:UserName }
}
 
Function logUserOff {
Write-Host
$SessionNum = Read-Host 'Numero de ID da sessao para fazer logoff?'
$title = "Log Off"
$message = "Tem certeza de que deseja desconecta-los?"
$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", `
"Desconecta o usuario selecionado."
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", `
"Exits."
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
$result = $host.ui.PromptForChoice($title, $message, $options, 1)
 
switch ($result){
0 {
Write-Host
Write-Host 'OK. Desconectando-os ...'
Invoke-Command -ComputerName $global:ComputerName -scriptBlock {logoff $args[0]} -ArgumentList $SessionNum
Write-Host
Write-Host 'Sucesso!' -ForegroundColor green
break
}
1 {break}
}
}
 
Do {
getSessions
logUserOff
 
Write-Host
#Write-Host "Press any key to continue ..."
# $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
 
#Configure yes choice
$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes","Remover outro perfil."
 
#Configure no choice
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No","Sair da remoção do perfil"
 
#Determine Values for Choice
$choice = [System.Management.Automation.Host.ChoiceDescription[]] @($yes,$no)
 
#Determine Default Selection
[int]$default = 0
 
#Present choice option to user
$userchoice = $host.ui.PromptforChoice("","Logoff de outro perfil?",$choice,$default)
}
#If user selects No, then quit the script
Until ($userchoice -eq 1)
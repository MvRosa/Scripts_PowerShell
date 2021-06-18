#Set-ExecutionPolicy RemoteSigned

$domain = "domain.com"

$user = Read-Host -Prompt "Insira o usuário"

$password = Read-Host -Prompt "Insira senha do $user" -AsSecureString

$username = "$domain\$user"

$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Add-Computer -DomainName $domain -Credential $credential
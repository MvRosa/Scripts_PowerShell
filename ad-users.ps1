$path = "reports\ad-users"

Get-ADUser -Filter {(Enabled -eq "true")} -Properties * -SearchBase 'OU=Users,DC=domain,DC=com' | Select-object SamAccountname | Export-CSV $path\ad-users.csv -NoTypeInformation -Encoding Utf8
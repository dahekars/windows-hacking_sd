
Start-Service WinRM 
#activiting WinRM service
Get-Item WSMan:\localhost\Client\TrustedHosts
#getting TrustedHosts list 

Set-Item WSMan:\localhost\Client\TrustedHosts -Value <IP of server>
#adding Host to TrustedHosts

New-PSSession -computername <Ip of Server> -Credential (Get-Credential)
# activiyting session for Server for Server Ip 

Enter-PSSession <ID of session>
# Enter the Session created 

Set-DnsClientServerAddress -InterfaceIndex <Index of interface> -ServerAddresses <IP Of the DNS Server>
# update DNS ip to the Domain server IP 
 
Add-Computer -DomainName <Domain name> -Credential <domainname>/Administrator -Force -Restart
# adding computer to the domain

Set-ExecutionPolicy RemoteSigned
#activiting powershell executionPolicy

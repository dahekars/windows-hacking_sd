
#SConfig is a tools set shortcut

#update NetWork ip to Static, Change Default Getway to *.*.*.2, DNS to IP of Server (for Domain Controler only), Change Server name   


install-windowsfeature AD-Domain-Services -IncludemanagementTools
# Install AD servies on server 


import-Module ADDSDeployment
install-ADDSForest
# Setting up Domain Name for Server

Get-DnsClientServerAddress
#Get the DNS IP address Status of system

Set-DnsClientServerAddress -InterfaceIndex <Index of interface> -ServerAddresses <IP Of the DNS Server>
#updates the DNS ip Address of DNS Server

$serverlist = Get-Content C:\Dev\servers.txt

foreach($server in $serverlist){
    Write-Host "Stopping $server"
    Get-Service -ComputerName $server -Name SplunkForwarder | Stop-Service
}

foreach($server in $serverlist){
    Write-Host "Statring $server"
    Get-Service -ComputerName $server -Name SplunkForwarder | Start-Service
}

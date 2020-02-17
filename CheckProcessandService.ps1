$serverlist = C:\Dev\serverlistqa.txt



foreach($server in $serverlist){
    Get-Process -ComputerName $server | Out-File -Append "C:\Dev\$server-process.txt"
    Get-Service -ComputerName $server | where{$_.Status -eq "Running"} | Out-File -Append "C:\Dev\$server-process.txt"
}



param(
  [switch]$UBS,
  [switch]$UBSRecCap,
  [switch]$ExecAndCommitted,
  [switch]$LSA,
  [switch]$LSB,
  [switch]$LSC,
  [switch]$LSD,
  [switch]$LSE,
  [switch]$LSF,
  [switch]$All,
  [switch]$FetchedOrders
)

if ($UBS) {
  Get-Content "\\TDWH-APUBS-V1\e$\Logs\Erik\ubsErik.log" | Where-Object { 
    $_.Contains("Capture conversation started") -or $_.Contains("Started capturing on exchange") 
  }   
}

if ($UBSRecCap) {
  Get-Content "\\tdwh-apubs-v1\e$\Logs\UBSDealServer\UBSDealServer.log" -Tail 1000 | Where-Object { 
    $_.Contains("Capturing on Exchange") -or $_.Contains("Received on Exchange") 
  }
}

if ($All) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSA                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v1\e$\Logs\Erik\LSA\erikLog.txt' -Tail 10
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSC                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v3\e$\Logs\Erik\LSC\erikLog.txt' -Tail 10
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSD                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v4\e$\Logs\Erik\LSD\erikLog.txt' -Tail 10
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSB                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v2\e$\Logs\Erik\LSB\erikLog.txt' -Tail 10
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSE                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v5\e$\Logs\Erik\LSE\erikLog.txt' -Tail 10
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSF                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v6\e$\Logs\Erik\LSF\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($ExecAndCommitted) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSA                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v1\e$\Logs\Erik\LSA\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSC                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v3\e$\Logs\Erik\LSC\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSD                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v4\e$\Logs\Erik\LSD\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSB                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v2\e$\Logs\Erik\LSB\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSE                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v5\e$\Logs\Erik\LSE\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSF                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v6\e$\Logs\Erik\LSF\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("executed and committed")
  }
}

if ($FetchedOrders) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSA                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v1\e$\Logs\Erik\LSA\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSC                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v3\e$\Logs\Erik\LSC\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSD                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v4\e$\Logs\Erik\LSD\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSB                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v2\e$\Logs\Erik\LSB\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSE                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v5\e$\Logs\Erik\LSE\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
  Write-Host ""
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSF                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v6\e$\Logs\Erik\LSF\erikLog.txt' -Tail 250 | Where-Object { 
    $_.Contains("Fetched Orders OK")
  }
}

if ($LSA) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSA                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v1\e$\Logs\Erik\LSA\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($LSB) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSB                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v2\e$\Logs\Erik\LSB\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($LSC) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSC                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v3\e$\Logs\Erik\LSC\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($LSD) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSD                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-aplim-v4\e$\Logs\Erik\LSD\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($LSE) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSE                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v5\e$\Logs\Erik\LSE\erikLog.txt' -Tail 10
  Write-Host ""
}

if ($LSF) {
  Write-Host "---------------------------------------------------------"
  Write-Host "                     LSF                                 "
  Write-Host "---------------------------------------------------------"
  Get-Content '\\tdwh-arlim-v6\e$\Logs\Erik\LSF\erikLog.txt' -Tail 10
  Write-Host ""
}
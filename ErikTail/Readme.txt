
Usage:

.\ErikTail.ps1 -All
Gets the last 10 entries in the log files for LSA,LSB,LSC,LSD,LSE & LSF

.\ErikTail.ps1 -UBS
Gets all Market Capture start events on UBS markets

.\ErikTail.ps1 -UBSRecCap
Gets instances of "Received on Exchange" & "Captured on Exchange"  (Tail 1000 lines)

.\ErikTail.ps1 -ExecAndCommitted
Gets instances of "executed and committed to AS400" from the logs on LSA,LSB,LSC,LSD,LSE & LSF
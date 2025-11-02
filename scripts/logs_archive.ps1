# Simple example: archive Event Logs daily
$Date = Get-Date -Format "yyyyMMdd_HHmm"
$Dest = "C:\Logs\archive_$Date.evtx"
wevtutil epl System $Dest

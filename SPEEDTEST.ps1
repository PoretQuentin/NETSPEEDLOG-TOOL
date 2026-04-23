$ErrorActionPreference = "Stop"

function Show-Banner {
    Clear-Host
    Write-Host ""
    Write-Host "=====================================" -ForegroundColor Cyan
    Write-Host "        NETSPEEDLOG TOOL" -ForegroundColor Green
    Write-Host "=====================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "        Speed test en cours..." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "        By Quentin Poret : https://github.com/PoretQuentin " -ForegroundColor Yellow
    Write-Host ""
}

Show-Banner
try {
    # Chemin vers speedtest.exe (portable)
    $speedtest = Join-Path $PSScriptRoot "dependance\speedtest.exe"

    if (!(Test-Path $speedtest)) {
        throw "speedtest.exe introuvable dans dépendance"
    }

    # Exécution
    $data = & $speedtest --accept-license --format=json | ConvertFrom-Json

    # Conversion Mbps
    $down = [math]::Round($data.download.bandwidth / 125000, 2).ToString('F2')
    $up   = [math]::Round($data.upload.bandwidth / 125000, 2).ToString('F2')

    # Log
    $logLine = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') | Download: $down Mbps | Upload: $up Mbps"
    $logPath = Join-Path $PSScriptRoot "scripts.log"

    Add-Content -Path $logPath -Value $logLine
}
catch {
    $errorPath = Join-Path $PSScriptRoot "error.log"
    "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') | ERROR: $_" | Add-Content -Path $errorPath
}
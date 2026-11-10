param([switch]$Iniciar)
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$folder = Join-Path $root 'resources'
$target = Join-Path $folder 'yt-dlp.exe'
$part = $target + '.part'
$sha = 'f5389d3698ecde4ef06f4e6b1ce0294fe9ac1396228c8990b8d3416d6d177a7d'
$url = 'https://github.com/yt-dlp/yt-dlp/releases/download/2026.10.26/yt-dlp.exe'
try {
    $ready = (Test-Path -LiteralPath $target -PathType Leaf)
    if ($ready) { $ready = ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant() -eq $sha) }
    if (-not $ready) {
        Write-Host 'Preparando el motor de descarga de Brisa (una vez, unos 24 MB)...'
        Write-Host 'Esta preparacion necesita internet. No cambia la configuracion de Windows.'
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
        New-Item -ItemType Directory -Force -Path $folder | Out-Null
        Invoke-WebRequest -Uri $url -OutFile $part -UseBasicParsing
        if ((Get-Item -LiteralPath $part).Length -ne 23575744) { throw 'La descarga quedo incompleta o tiene otro tamano.' }
        if ((Get-FileHash -LiteralPath $part -Algorithm SHA256).Hash.ToLowerInvariant() -ne $sha) { throw 'El archivo no coincide con SHA-256. No se ejecutara.' }
        Move-Item -LiteralPath $part -Destination $target -Force
    }
    Write-Host 'Motor verificado. Brisa esta lista.'
    if ($Iniciar) {
        $app = Join-Path $root 'Brisa Local.exe'
        if (-not (Test-Path -LiteralPath $app -PathType Leaf)) { throw 'Extrae todo el ZIP de Windows antes de iniciar Brisa.' }
        Start-Process -FilePath $app -WorkingDirectory $root
    }
    exit 0
} catch {
    Write-Host ('No se pudo preparar Brisa: ' + $_.Exception.Message)
    Write-Host 'Comprueba tu conexion e intentalo de nuevo. No se ha abierto ningun motor sin verificar.'
    exit 1
} finally {
    if (Test-Path -LiteralPath $part) { Remove-Item -LiteralPath $part -Force }
}

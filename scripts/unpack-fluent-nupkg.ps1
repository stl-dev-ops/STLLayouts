$ErrorActionPreference = 'Stop'

$pkg = Join-Path $env:USERPROFILE '.nuget\packages\telerik.windows.themes.fluent.for.wpf\2025.4.1111\telerik.windows.themes.fluent.for.wpf.2025.4.1111.nupkg'
if (-not (Test-Path $pkg)) {
  throw "Missing nupkg: $pkg"
}

$zip = Join-Path $env:TEMP 'telerik.fluent.2025.4.1111.zip'
Copy-Item -Path $pkg -Destination $zip -Force

$outDir = Join-Path $PSScriptRoot '..\temp\fluent_nupkg'
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

Expand-Archive -Path $zip -DestinationPath $outDir -Force

Write-Host "Unpacked to: $outDir"

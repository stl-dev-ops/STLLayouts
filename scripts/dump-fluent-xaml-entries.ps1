$ErrorActionPreference = 'Stop'

$zipPath = Join-Path $env:TEMP 'telerik.fluent.2025.4.1111.zip'
if (-not (Test-Path $zipPath)) {
  throw "Missing zip: $zipPath"
}

Add-Type -AssemblyName System.IO.Compression.FileSystem

$archive = [System.IO.Compression.ZipFile]::OpenRead($zipPath)
try {
  $archive.Entries |
    Where-Object { $_.FullName -like '*.xaml' } |
    Select-Object -ExpandProperty FullName |
    Sort-Object
}
finally {
  $archive.Dispose()
}

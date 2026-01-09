$ErrorActionPreference = 'Stop'

$dir = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\bin\Debug\net8.0-windows'
$dir = (Resolve-Path $dir).Path

$dll = Join-Path $dir 'Telerik.Windows.Themes.Fluent.dll'
if (-not (Test-Path $dll)) {
  Write-Host "Missing: $dll"
  exit 0
}

$asm = [System.Reflection.Assembly]::LoadFrom($dll)

$types = $null
try {
  $types = $asm.GetTypes()
} catch [System.Reflection.ReflectionTypeLoadException] {
  $ex = $_.Exception
  Write-Host 'ReflectionTypeLoadException while loading Telerik.Windows.Themes.Fluent types:'
  foreach ($le in $ex.LoaderExceptions) {
    Write-Host (' - ' + $le.Message)
  }

  $types = $ex.Types | Where-Object { $_ -ne $null }
}

if ($null -eq $types -or $types.Count -eq 0) {
  Write-Host 'No loadable types found.'
  exit 0
}

$types |
  Where-Object { $_.FullName -match 'FluentPalette|Palette|FluentTheme|Theme' } |
  Sort-Object FullName |
  Select-Object -ExpandProperty FullName

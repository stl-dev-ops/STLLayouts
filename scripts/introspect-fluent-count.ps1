$ErrorActionPreference = 'Stop'

$dir = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\bin\Debug\net8.0-windows'
$dir = (Resolve-Path $dir).Path

$dll = Join-Path $dir 'Telerik.Windows.Themes.Fluent.dll'
$asm = [System.Reflection.Assembly]::LoadFrom($dll)

try {
  $types = $asm.GetTypes()
} catch [System.Reflection.ReflectionTypeLoadException] {
  $types = $_.Exception.Types | Where-Object { $_ -ne $null }
}

Write-Host $types.Count

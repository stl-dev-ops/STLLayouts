$ErrorActionPreference = 'Stop'

$dllPath = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\bin\Debug\net8.0-windows\Telerik.Windows.Themes.Fluent.dll'
$dllPath = (Resolve-Path $dllPath).Path

# Find any pack URIs embedded in the Fluent theme assembly (these often include palette/dark resource paths)
$bytes = [System.IO.File]::ReadAllBytes($dllPath)
$text = [System.Text.Encoding]::UTF8.GetString($bytes)

$re = [regex]'Themes\/[A-Za-z0-9_\-\./]+\.xaml'
$matches = $re.Matches($text) | ForEach-Object { $_.Value } | Sort-Object -Unique

$matches

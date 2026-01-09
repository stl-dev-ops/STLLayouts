param(
  [Parameter(Mandatory=$true)][string]$AssemblyPath
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $AssemblyPath)) {
  throw "Missing assembly: $AssemblyPath"
}

Add-Type -AssemblyName System.Reflection.Metadata
Add-Type -AssemblyName System.Reflection.PortableExecutable

$fs = [IO.File]::OpenRead((Resolve-Path $AssemblyPath))
try {
  $pe = [System.Reflection.PortableExecutable.PEReader]::new($fs)
  $mr = $pe.GetMetadataReader()

  $strings = New-Object System.Collections.Generic.HashSet[string]

  foreach ($handle in $mr.UserStrings) {
    $s = $mr.GetUserString($handle)
    if ($s -and $s -match 'GridView|Filter|MatchCase|EditorStyle|ControlTemplate') { [void]$strings.Add($s) }
  }

  foreach ($handle in $mr.Strings) {
    $s = $mr.GetString($handle)
    if ($s -and $s -match 'GridView|Filter|MatchCase|EditorStyle|ControlTemplate') { [void]$strings.Add($s) }
  }

  $strings | Sort-Object
}
finally {
  $fs.Dispose()
}

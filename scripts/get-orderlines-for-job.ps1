param(
    [Parameter(Mandatory = $true)]
    [string]$JobId,

    [int]$Top = 200,

    [string]$ServerInstance = "STL-SQL1\CRMDB",
    [string]$Database = "sqlb00",

    [switch]$AsJson,

    [switch]$Encrypt,
    [switch]$TrustServerCertificate
)

$ErrorActionPreference = "Stop"

$solutionDir = Split-Path -Parent $PSScriptRoot

$query = @"
SELECT TOP (@Top) *
FROM dbo.vw_STLLayouts_OrderLines
WHERE ord__ref = @JobId
ORDER BY TRY_CONVERT(int, bstvlgnr) ASC, lyn__ref ASC;
"@

$params = @{
    Top   = $Top
    JobId = $JobId
}

$paramTypes = @{
    Top = 'int'
    JobId = 'nvarchar'
}

# This uses the repo-governed SQL interaction: a script that logs to logs/ and mirrors the connection string defaults.
$invoke = Join-Path $PSScriptRoot "query-crmdb.ps1"

& $invoke -Query $query -Parameters $params -ParameterTypes $paramTypes -ServerInstance $ServerInstance -Database $Database -AsJson:$AsJson -Encrypt:$Encrypt -TrustServerCertificate:$TrustServerCertificate

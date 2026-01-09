param(
    [Parameter(Mandatory = $true)] [string]$JobId
)

$ErrorActionPreference = 'Stop'

function Get-ConnectionStringFromAppSettings {
    $appSettingsPath = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\appsettings.json'
    $appSettingsPath = (Resolve-Path $appSettingsPath).Path

    if (-not (Test-Path $appSettingsPath)) {
        throw "appsettings.json not found at: $appSettingsPath"
    }

    $json = Get-Content -Raw -Path $appSettingsPath | ConvertFrom-Json
    $cs = $json.ConnectionStrings.CRMDatabase

    if ([string]::IsNullOrWhiteSpace($cs)) {
        throw "ConnectionStrings:CRMDatabase missing/empty in $appSettingsPath"
    }

    return $cs
}

function Normalize-ConnectionString([string]$cs) {
    if ([string]::IsNullOrWhiteSpace($cs)) { return $cs }

    $cs = $cs -replace '(?i)Trust Server Certificate\s*=', 'TrustServerCertificate='
    $cs = $cs -replace '(?i)Initial Catalog\s*=', 'Initial Catalog='
    $cs = $cs -replace '(?i)Data Source\s*=', 'Data Source='
    return $cs
}

function Strip-DbPrefix([string]$propertyPath) {
    if ([string]::IsNullOrWhiteSpace($propertyPath)) { return $propertyPath }
    if (-not $propertyPath.Contains('.')) { return $propertyPath }

    $parts = $propertyPath.Split('.')
    if ($parts.Length -ge 2) { return $parts[$parts.Length - 1] }
    return $propertyPath
}

function Is-Missing($value) {
    if ($null -eq $value) { return $true }
    if ($value -is [DBNull]) { return $true }
    if ($value -is [string] -and [string]::IsNullOrWhiteSpace($value)) { return $true }
    return $false
}

function Resolve-MappingValue {
    param(
        [hashtable]$Context,
        [string]$VariableName,
        [string]$DatabaseField,
        [hashtable]$DbFieldAliasMap
    )

    # This mirrors the app's EvaluateMappingAsync behavior order for DB-field resolution.
    # (We skip reflection on Job properties here; we only validate the DB context row.)

    # 1) VariableName directly
    if ($Context.ContainsKey($VariableName) -and -not (Is-Missing $Context[$VariableName])) {
        return @{ Found=$true; Source='VariableName'; Key=$VariableName; Value=$Context[$VariableName] }
    }

    # 2) DatabaseField (exact), then stripped
    if (-not [string]::IsNullOrWhiteSpace($DatabaseField)) {
        if ($Context.ContainsKey($DatabaseField) -and -not (Is-Missing $Context[$DatabaseField])) {
            return @{ Found=$true; Source='DatabaseField'; Key=$DatabaseField; Value=$Context[$DatabaseField] }
        }

        $stripped = Strip-DbPrefix $DatabaseField
        if ($Context.ContainsKey($stripped) -and -not (Is-Missing $Context[$stripped])) {
            return @{ Found=$true; Source='StrippedDbField'; Key=$stripped; Value=$Context[$stripped] }
        }

        # 3) Known alias mapping (db field -> alias)
        if ($DbFieldAliasMap.ContainsKey($DatabaseField)) {
            $alias = $DbFieldAliasMap[$DatabaseField]
            if ($Context.ContainsKey($alias) -and -not (Is-Missing $Context[$alias])) {
                return @{ Found=$true; Source='Alias'; Key=$alias; Value=$Context[$alias] }
            }
        }
        if ($DbFieldAliasMap.ContainsKey($stripped)) {
            $alias = $DbFieldAliasMap[$stripped]
            if ($Context.ContainsKey($alias) -and -not (Is-Missing $Context[$alias])) {
                return @{ Found=$true; Source='Alias'; Key=$alias; Value=$Context[$alias] }
            }
        }

        # Not found (or found but missing)
        if ($Context.ContainsKey($DatabaseField)) {
            return @{ Found=$true; Source='DatabaseField'; Key=$DatabaseField; Value=$Context[$DatabaseField] }
        }
        if ($Context.ContainsKey($stripped)) {
            return @{ Found=$true; Source='StrippedDbField'; Key=$stripped; Value=$Context[$stripped] }
        }
        if ($DbFieldAliasMap.ContainsKey($DatabaseField) -and $Context.ContainsKey($DbFieldAliasMap[$DatabaseField])) {
            $alias = $DbFieldAliasMap[$DatabaseField]
            return @{ Found=$true; Source='Alias'; Key=$alias; Value=$Context[$alias] }
        }
    }

    return @{ Found=$false; Source=''; Key=''; Value=$null }
}

$cs = Normalize-ConnectionString (Get-ConnectionStringFromAppSettings)

Add-Type -AssemblyName System.Data

# Map DB fields in VariableMappings to the *actual* alias columns produced by GetJobContextAsync.
# This allows the validator to say "works" when the mapping will resolve via that alias.
$dbFieldAliasMap = @{
    # Customer (klabas__)
    'dbo.klabas__.naam____'    = 'CustomerName'
    'naam____'                = 'CustomerName'

    'dbo.klabas__.kla__ref'    = 'CustomerRef'
    'kla__ref'                = 'CustomerRef'

    'dbo.klabas__.kla__rpn'    = 'CustomerKeyword'
    'kla__rpn'                = 'CustomerKeyword'

    'dbo.klabas__.straat__'    = 'CustomerStreet'
    'straat__'                = 'CustomerStreet'

    'dbo.klabas__.wijk____'    = 'CustomerDistrict'
    'wijk____'                = 'CustomerDistrict'

    'dbo.klabas__.postnaam'    = 'CustomerCity'
    'postnaam'                = 'CustomerCity'

    'dbo.klabas__.telefoon'    = 'CustomerPhone'
    'telefoon'                = 'CustomerPhone'

    'dbo.klabas__.telefax_'    = 'CustomerFax'
    'telefax_'                = 'CustomerFax'

    # Sales line (bstlyn__)
    'dbo.bstlyn__.afg_oms1'    = 'SalesLineProductDesc1'
    'dbo.bstlyn__.afg_oms2'    = 'SalesLineProductDesc2'
    'dbo.bstlyn__.vrz__dat'    = 'ShipDate'
    'dbo.bstlyn__.lev__dat'    = 'ActualDeliveryDate'
    'dbo.bstlyn__.l_aantal'    = 'DeliveredQuantity'

    # Reservation (resgrd__)
    'dbo.resgrd__.dat_resv'    = 'ReservationDate'
    'dbo.resgrd__.reserve_'    = 'ReservedQuantity'
    'dbo.resgrd__.kommen_1'    = 'ReservationComments1'
    'dbo.resgrd__.kommen_2'    = 'ReservationComments2'
    'dbo.resgrd__.kommen_3'    = 'ReservationComments3'

    # Product/version/material chain
    'dbo.v4vrs___.afg__ref'    = 'ProductCode'
    'dbo.v4vrs___.vrs__ref'    = 'ProductVersion'

    'dbo.afgart__.afg_oms1'    = 'ProductFullDescription1'
    'dbo.afgart__.afg_oms2'    = 'ProductFullDescription2'
    'dbo.afgart__.afg__rpn'    = 'ProductKeyword'
    'dbo.afgart__.art__ref'    = 'ProductMaterialID'

    'dbo.artiky__.art_oms1'    = 'MaterialDescription1'
    'dbo.artiky__.art_oms2'    = 'MaterialDescription2'
    'dbo.artiky__.diameter'    = 'MaterialDiameter'
    'dbo.artiky__.grammage'    = 'MaterialGrammage'
    'dbo.artiky__.hoogte__'    = 'MaterialHeight'
    'dbo.artiky__.lengte__'    = 'MaterialLength'
    'dbo.artiky__.breedte_'    = 'MaterialWidth'
    'dbo.artiky__.art__rpn'    = 'MaterialKeyword'
    'dbo.artiky__.lev__ref'    = 'MaterialSupplierID'
    'dbo.artiky__.art__srt'    = 'MaterialType'
}

$connection = New-Object System.Data.SqlClient.SqlConnection($cs)
try {
    $connection.Open()

    # Get a single context row exactly like the service does
    $cmd = $connection.CreateCommand()
    $cmd.CommandText = @"
WITH ctx AS (
    SELECT
        o.*, 
        k.naam____  AS CustomerName,

        o.ord__ref   AS JobNumber,
        o.ord__rpn   AS JobOrderNumber,
        o.best_dat   AS OrderDate,
        o.omschr__   AS ProductDescription,
        o.open____   AS JobStatus,

        k.kla__ref   AS CustomerRef,
        k.kla__rpn   AS CustomerKeyword,
        k.straat__   AS CustomerStreet,
        k.wijk____   AS CustomerDistrict,
        k.postnaam  AS CustomerCity,
        k.telefoon  AS CustomerPhone,
        k.telefax_  AS CustomerFax,

        bl.afg_oms1  AS SalesLineProductDesc1,
        bl.afg_oms2  AS SalesLineProductDesc2,
        bl.vrz__dat  AS ShipDate,
        bl.lev__dat  AS ActualDeliveryDate,
        bl.l_aantal  AS DeliveredQuantity,

        rg.dat_resv  AS ReservationDate,
        rg.reserve_  AS ReservedQuantity,
        rg.kommen_1  AS ReservationComments1,
        rg.kommen_2  AS ReservationComments2,
        rg.kommen_3  AS ReservationComments3,

        v.afg__ref   AS ProductCode,
        v.vrs__ref   AS ProductVersion,

        a.afg_oms1   AS ProductFullDescription1,
        a.afg_oms2   AS ProductFullDescription2,
        a.afg__rpn   AS ProductKeyword,
        a.art__ref   AS ProductMaterialID,

        m.art_oms1   AS MaterialDescription1,
        m.art_oms2   AS MaterialDescription2,
        m.diameter  AS MaterialDiameter,
        m.grammage  AS MaterialGrammage,
        m.hoogte__   AS MaterialHeight,
        m.lengte__   AS MaterialLength,
        m.breedte_   AS MaterialWidth,
        m.art__rpn   AS MaterialKeyword,
        m.lev__ref   AS MaterialSupplierID,
        m.art__srt   AS MaterialType
    FROM dbo.order___ o
    LEFT JOIN dbo.klabas__ k
        ON o.kla__ref = k.kla__ref
    OUTER APPLY (
        SELECT TOP 1
            b.afg_oms1,
            b.afg_oms2,
            b.vrz__dat,
            b.lev__dat,
            b.l_aantal,
            b.afg__ref,
            b.vrs__ref
        FROM dbo.bstlyn__ b
        WHERE b.ord__ref = o.ord__ref
        ORDER BY TRY_CONVERT(int, b.bstvlgnr) ASC, b.lyn__ref ASC
    ) bl
    OUTER APPLY (
        SELECT TOP 1
            r.dat_resv,
            r.reserve_,
            r.kommen_1,
            r.kommen_2,
            r.kommen_3,
            r.art__ref,
            r.art__srt
        FROM dbo.resgrd__ r
        WHERE r.ord__ref = o.ord__ref
        ORDER BY r.dat_resv ASC, r.res__ref ASC
    ) rg
    LEFT JOIN dbo.v4vrs___ v
        ON v.off__ref = o.off__ref
       AND v.vrs__ref = bl.vrs__ref
    LEFT JOIN dbo.afgart__ a
        ON a.afg__ref = v.afg__ref
    LEFT JOIN dbo.artiky__ m
        ON m.art__ref = a.art__ref
    WHERE o.ord__ref = @JobId
)
SELECT * FROM ctx;
"@

    $p = $cmd.Parameters.Add('@JobId', [System.Data.SqlDbType]::NVarChar, 50)
    $p.Value = $JobId

    $da = New-Object System.Data.SqlClient.SqlDataAdapter $cmd
    $dt = New-Object System.Data.DataTable
    [void]$da.Fill($dt)

    if ($dt.Rows.Count -eq 0) {
        throw "No job context row returned for JobId '$JobId'."
    }

    $row = $dt.Rows[0]
    $ctx = @{}
    foreach ($col in $dt.Columns) {
        $ctx[$col.ColumnName] = $row[$col.ColumnName]
    }

    # Load mappings from the app DB. Try common table names.
    $tableCandidates = @(
        'dbo.VariableMappings',
        'VariableMappings',
        'dbo.stlLayouts_VariableMappings',
        'dbo.stlLayouts_VariableMapping'
    )

    $mappings = $null
    foreach ($t in $tableCandidates) {
        try {
            $cmd2 = $connection.CreateCommand()
            $cmd2.CommandText = "SELECT VariableName, DatabaseField FROM $t ORDER BY VariableName"
            $da2 = New-Object System.Data.SqlClient.SqlDataAdapter $cmd2
            $dt2 = New-Object System.Data.DataTable
            [void]$da2.Fill($dt2)
            if ($dt2.Rows.Count -gt 0) {
                $mappings = $dt2
                break
            }
        }
        catch {
            # ignore and try the next candidate
        }
    }

    if ($null -eq $mappings) {
        throw "Could not locate variable mappings table. Tried: $($tableCandidates -join ', ')"
    }

    $results = New-Object System.Collections.Generic.List[object]

    foreach ($r2 in $mappings.Rows) {
        $varName = [string]$r2['VariableName']
        $dbField = $r2['DatabaseField']
        if ($dbField -eq $null -or [string]::IsNullOrWhiteSpace([string]$dbField)) { continue }

        $dbFieldStr = [string]$dbField

        $resolved = Resolve-MappingValue -Context $ctx -VariableName $varName -DatabaseField $dbFieldStr -DbFieldAliasMap $dbFieldAliasMap

        $found = [bool]$resolved.Found
        $value = $resolved.Value

        $isNull = $false
        $isEmpty = $false
        if ($found) {
            if ($value -eq $null -or $value -is [DBNull]) { $isNull = $true }
            elseif ($value -is [string] -and $value.Length -eq 0) { $isEmpty = $true }
        }

        # "WORKS" means the app will resolve to a non-missing value from the context.
        $status = if (-not $found) { 'NOT_FOUND' } elseif ($isNull) { 'NULL' } elseif ($isEmpty) { 'EMPTY' } else { 'WORKS' }

        $results.Add([pscustomobject]@{
            VariableName       = $varName
            DatabaseField      = $dbFieldStr
            ResolvedFrom       = $resolved.Source
            ResolvedKey        = $resolved.Key
            Status             = $status
            Value              = if ($found -and -not $isNull) { $value } else { $null }
        })
    }

    $outDir = Join-Path $PSScriptRoot '..\temp'
    if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Force -Path $outDir | Out-Null }

    $jsonPath = Join-Path $outDir "mapping-validation-$JobId.json"
    $txtPath  = Join-Path $outDir "mapping-validation-$JobId.txt"

    $results | ConvertTo-Json -Depth 6 | Set-Content -Encoding UTF8 $jsonPath

    $summaryLines = $results | Group-Object Status | Sort-Object Name | ForEach-Object { "{0}: {1}" -f $_.Name, $_.Count }

    $summaryText = @(
        "JobId: $JobId",
        "---",
        ($summaryLines -join "`r`n"),
        "---",
        "Top NOT_FOUND:",
        ($results | Where-Object Status -eq 'NOT_FOUND' | Select-Object -First 50 VariableName, DatabaseField | Format-Table -AutoSize | Out-String),
        "Top NULL:",
        ($results | Where-Object Status -eq 'NULL' | Select-Object -First 50 VariableName, DatabaseField, ResolvedFrom, ResolvedKey | Format-Table -AutoSize | Out-String),
        "Top EMPTY:",
        ($results | Where-Object Status -eq 'EMPTY' | Select-Object -First 50 VariableName, DatabaseField, ResolvedFrom, ResolvedKey | Format-Table -AutoSize | Out-String)
    ) -join "`r`n"

    $summaryText | Set-Content -Encoding UTF8 $txtPath

    Write-Host "Wrote: $jsonPath" -ForegroundColor Cyan
    Write-Host "Wrote: $txtPath" -ForegroundColor Cyan

    $results | Format-Table -AutoSize VariableName, Status, ResolvedFrom, ResolvedKey
}
finally {
    if ($connection.State -eq 'Open') { $connection.Close() }
}

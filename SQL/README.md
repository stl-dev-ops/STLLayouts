# SQL Query Repository

Production traceability and analytics queries for CERM ERP system on SQL Server.

**Database Connection:**
- Server: `STL-SQL1\CRMDB`
- Database: `sqlb00`

## Repository Structure

```
SQL/
├── production/          # Production traceability queries
│   ├── spool_trace.sql           # Full lineage: spool → press → packaging
│   └── spool_trace_excel.sql     # Excel-safe version with formula wrappers
├── power-query/         # Power Query M scripts for Excel/Power BI
│   ├── spool_trace_powerquery.m
│   └── spool_trace_full_template.m
├── analytics/           # Analytics and reporting queries
│   ├── aging.sql
│   ├── downtime.sql
│   └── downtime2.sql
├── archive/             # Archive/historical data queries
│   └── archive_*.sql
├── schema/              # Versioned database object definitions
│   ├── tables/              # 1,246 tables (dbo.*)
│   ├── views/               # 390 views
│   ├── stored-procedures/   # 133 stored procedures
│   ├── functions/           # 18 functions
│   └── triggers/            # 49 triggers
└── queries/             # General/misc queries
```

## Schema Versioning

All database objects are scripted into the `schema/` directory for change tracking in Git.

**Object Counts (last extraction):**
- Tables: 1,246
- Views: 390
- Stored Procedures: 133
- Functions: 18
- Triggers: 49
- Total: 1,838 objects

**Extraction Script:** `schema/Extract-DatabaseSchema.ps1`
- Uses SMO + `Invoke-Sqlcmd` with `-TrustServerCertificate` for the named instance.
- Generates one UTF-8 `.sql` file per object named `<schema>.<object>.sql`.
- Only `dbo` schema objects are currently tracked (root-level duplicates removed).

**How to Re-Extract:**
```powershell
# From repository root
cd schema
pwsh -File .\Extract-DatabaseSchema.ps1
# Review changes
git status
# Stage & commit updated objects
git add schema
git commit -m "chore: refresh schema extraction"
git push origin master
```

**Duplication Policy:**
- Canonical definitions live under `schema/<type>/`.
- Legacy root-level table scripts were removed after confirmation (1,221 deletions) to prevent drift.
- Prefer editing objects in the database, then re-run extraction—do not hand-edit generated files.

**Suggested Workflow:**
1. Change object in development database.
2. Re-run extraction script.
3. Diff with Git (`git diff`).
4. Commit with semantic message (`feat:`, `fix:`, `refactor:` etc.).

**Automation:**
- `Refresh-Schema.ps1` – Automated extraction + commit + push
- `Setup-ScheduledRefresh.ps1` – Creates Windows Scheduled Task for nightly/weekly runs
- `Test-SchemaIntegrity.ps1` – Validates schema file structure and content

**Branch Protection:**
See [`.github/BRANCH_PROTECTION.md`](.github/BRANCH_PROTECTION.md) for recommended GitHub settings.

## Featured Queries

### 📦 Production Traceability: `production/spool_trace.sql`

Complete production lineage query tracing a spool through the entire manufacturing process:
- **Spooling** → FlatRolls → Brick (SFG)
- **Rewind** → RewindBricks
- **Press** → PressRolls
- **Packaging** → Customer boxes and pallets

**Key Features:**
- ✅ Operator tracking at each stage (spooling, rewind, press)
- ✅ Machine tracking at each stage (spooler, rewind machine, press machine)
- ✅ Press consumption analytics:
  - `RewindBrickCount` / `RewindBrickNoList` – rewind bricks consumed per press roll
  - `PressRollUsageCount` / `PressRollSFGList` – press rolls using each rewind brick (multi-pass/split detection)
  - `EarliestRewindBrickModified` / `LatestRewindBrickModified` – consumption timeline bounds
  - `MinutesFromFirstRewindBrickToPressRoll` / `MinutesFromLastRewindBrickToPressRoll` – lead time metrics

**Usage:**
```sql
-- Edit parameters at top of file
DECLARE @JobNo    nvarchar(6) = N'511267';  -- job number
DECLARE @SpoolNo  int         = NULL;       -- spool number (NULL for all)
-- Execute query in SSMS or Azure Data Studio
```

**Excel-safe version:** `production/spool_trace_excel.sql`
- Wraps ID fields with `'="value"'` formula prefix to prevent scientific notation

### 📊 Power Query Integration: `power-query/`

**spool_trace_powerquery.m**
- Ready for Excel / Power BI
- Edit `JobNo` and `SpoolNo` parameters at top
- Paste into Power Query Advanced Editor or import as .m file

**spool_trace_full_template.m**
- Alternative template style matching existing conventions
- Uses `#(lf)` escapes for line feeds
- Same functionality as `spool_trace_powerquery.m`

### 📈 Analytics: `analytics/`

- `aging.sql` – Inventory aging analysis
- `downtime.sql` / `downtime2.sql` – Machine downtime tracking

### 🗄️ Archive Queries: `archive/`

Historical data and archival queries for:
- `archive_afgbox__.sql` – Box archival
- `archive_afgsku__.sql` – SKU archival
- `archive_hismnt__.sql` – Maintenance history
- And more...

## Contributing

1. Create a feature branch: `git checkout -b feature/your-feature-name`
2. Make changes and test on development database
3. Commit with descriptive messages: `git commit -m "feat: add xyz query"`
4. Push and create pull request: `git push origin feature/your-feature-name`
5. Update this README when adding significant queries

## Quick Start

Clone the repository:
```powershell
git clone https://github.com/stl-dev-ops/SQL.git
cd SQL
```

Run a query:
1. Open `production/spool_trace.sql` in SSMS or Azure Data Studio
2. Edit parameters at the top
3. Execute (F5)
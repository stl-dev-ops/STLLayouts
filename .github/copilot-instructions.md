# Copilot Instructions (Repo Focus)

## Goal
Help Copilot produce changes that fit this repository by using the repo’s own context (architecture, conventions, and current priorities).

## Source of Truth (read these first)
- `README.md`
- `ARCHITECTURE.md`
- `REQUIREMENTS.md`
- `ROADMAP.md`
- `TODO.md`
- `CHANGELOG.md`
- `docs/README.md`

## Canonical org SQL connection (Development)
Use this connection string across the app and repo scripts:

`Data Source=STL-SQL1\\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True`

Notes:
- The SQL Server name contains a single backslash: `STL-SQL1\\CRMDB`.
- Scripts/tools that connect to SQL Server must mirror `Encrypt=False` and `Trust Server Certificate=True`.

## Working Style
- Prefer the smallest correct change.
- Follow existing patterns and folder structure.
- If requirements are unclear, ask 1–3 specific questions before coding.
- When proposing a multi-step change, outline a short plan first.

## Automation & Logging (Non-Negotiable)
- Do NOT run `dotnet build` or `dotnet run` directly.
- Always use the repo scripts:
  - `scripts/build.ps1`
  - `scripts/rebuild.ps1`
  - `scripts/run.ps1`
- SQL patches must be applied via `scripts/*.ps1` (no manual SSMS execution and no ad-hoc `sqlcmd` one-liners).
- All scripts must write actionable logs under `logs/` (including failures/exceptions).
- If an operation fails (build/run/sql patch), always open and summarize the latest relevant log under `logs/`.

## Read-only DB verification (Repo-governed)
- For read-only database verification, use `scripts/query-crmdb.ps1` or other purpose-built scripts in `scripts/`.
- These scripts must log under `logs/` and must use the canonical org SQL connection defaults (see above).

## IDE guidance
### Visual Studio
Use External Tools (or equivalent) wired to the repo scripts.

### VS Code
Use `.vscode/tasks.json` tasks wired to the repo scripts.

## Output Expectations
- Identify the likely files to change.
- Make changes easy to review.
- Update `TODO.md` and/or `CHANGELOG.md` when appropriate.

# Workspace Governance: Build/Run Workflow

This repository mandates builds and runs via scripts under `scripts/`.

Policy
- All builds: Use `scripts/build.ps1` (or the IDE task/tool wired to it).
- Clean rebuilds: Use `scripts/rebuild.ps1`.
- Running the app: Use `scripts/run.ps1`.

## Canonical org SQL connection (Development)
Use this connection string across the app and repo scripts:

`Data Source=STL-SQL1\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True`

Notes:
- The SQL Server name contains a single backslash: `STL-SQL1\CRMDB`.
- Scripts that connect to SQL Server must mirror `Encrypt=False` and `Trust Server Certificate=True`.

SQL patches
- Apply SQL patches via `scripts/*.ps1` wrappers only.
- Do not apply patches manually in SSMS.
- Do not use ad-hoc `sqlcmd` one-liners.

Logging (mandatory)
- Scripts must write actionable logs under `logs/`.
- Failures/exceptions must be written to the log file as well ("just read the log" must work).
- When an operation fails (build/run/sql patch), read the latest relevant log under `logs/` first.

Guardrails
- Scripts stop any running `STLLayouts*` or `dotnet` processes before building/running to prevent locked DLLs.
- Tasks/scripts are the canonical entry points; avoid ad-hoc `dotnet build` / `dotnet run`.

Operator Notes
- Trigger execution via the repo scripts (or IDE tasks/tools wired to them).
- On failures, open the latest log file in `logs/`.
- If a task is missing or altered, restore it and re-run.

## Work Tracking Governance (Issues + Delta Time)
This repo requires that every meaningful change is tracked as a GitHub issue and that time spent is recorded.

Requirements:
- Every commit must reference a GitHub issue number (e.g., `#123`) and include an issue URL trailer.
- Every commit must include a delta time trailer.
- Every issue must include a `Time spent (hh:mm:ss)` field in the issue body.
- Every PR must include the related issue, issue URL, and delta time fields.

Commit message requirements (example):
- Subject contains `#123`
- Trailers include:
  - `Issue: https://github.com/stl-dev-ops/STLLayouts/issues/123`
  - `Delta-Time: 00:37:12`

Recommended close syntax:
- `Closes #123`

## Master Plan Governance (Always-visible progress)
This repo maintains a canonical master plan with milestone checklists in `docs/MASTER_PLAN.md`.

Requirements:
- Every issue must identify the target milestone (e.g., `M2 — Word Repeat Blocks`).
- Every PR must include a master plan reference (milestone + bullet item).
- When work is completed, update:
  - `docs/MASTER_PLAN.md` (check off the deliverable)
  - `TODO.md` (move/mark sprint item)
  - `CHANGELOG.md` (if user-visible behavior changed)

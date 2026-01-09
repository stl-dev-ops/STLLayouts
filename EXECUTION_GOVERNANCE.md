# STL Layouts - Execution Governance Policy

**EFFECTIVE IMMEDIATELY**

## Summary

The STL Layouts application execution is governed by a strict policy that ensures consistent, repeatable, and predictable behavior.

## Policy (Canonical)
- Use the repo scripts (`scripts/build.ps1`, `scripts/rebuild.ps1`, `scripts/run.ps1`, `scripts/run-debug.ps1`) for all build/run operations.
- **Human preferred UX**: VS Code tasks wired to the repo scripts in `.vscode/tasks.json`.
- **Automation/agent approved UX**: invoking the same repo scripts directly from a terminal (CLI).
- Avoid ad-hoc `dotnet build` / `dotnet run` commands.

## VS Code Tasks (Preferred for humans)
Use:
- `Build Solution`
- `Rebuild Solution`
- `Run Application`
- `Run Application (Debug)`

## CLI (Approved for automation/agents)
You may execute the same scripts directly:
- `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/build.ps1"`
- `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/rebuild.ps1"`
- `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/run.ps1"`
- `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/run-debug.ps1"`

## Verification Checklist
- [ ] Scripts kill prior instances before starting new ones
- [ ] Scripts write logs under `logs/`
- [ ] Tasks invoke scripts (not raw commands)

---

**Status**: ✅ ENFORCEMENT ACTIVE

**Last Updated**: 2026-01-09

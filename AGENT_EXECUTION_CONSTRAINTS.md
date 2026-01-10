# AGENT EXECUTION CONSTRAINTS

**MANDATORY FOR AI AGENT - NON-NEGOTIABLE**

## Repo: `STLLayouts` (C:\dev\STLLayouts)
This policy applies to the STLLayouts repository.

## PRIMARY CONSTRAINT: BUILD/RUN ENTRY POINTS
If the task involves building, testing, or launching the STLLayouts application:
- Use the repo scripts (`scripts/build.ps1`, `scripts/rebuild.ps1`, `scripts/run.ps1`, `scripts/run-debug.ps1`).
- **Human preferred UX**: VS Code tasks defined in `.vscode/tasks.json` which invoke the repo scripts.
- **Agent/automation allowed**: invoking the same repo scripts directly from a terminal.
- Do not use ad-hoc `dotnet build` / `dotnet run`.

## Available Tasks (VS Code)
- `Build Solution`
- `Rebuild Solution`
- `Run Application` (Release)
- `Run Application (Debug)`

## Enforcement
- Do not work around broken tasks by using raw `dotnet` commands.
- If tasks are missing/broken, fix `.vscode/tasks.json` to call the repo scripts, then re-run.

**STATUS**: ✅ ACTIVE AND BINDING

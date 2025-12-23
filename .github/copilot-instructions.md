# Copilot Governance for STLLayouts

Purpose: Ensure builds and runs ALWAYS use VS Code Tasks that call repo scripts, with logs monitored. Never use ad-hoc terminal commands for these operations.

Required Workflow
- Build: Use the VS Code task "Build Solution" (runs scripts/build.ps1).
- Clean Rebuild: Use the VS Code task "Rebuild Solution" (runs scripts/rebuild.ps1).
- Run: Use the VS Code task "Run Application" (runs scripts/run.ps1).

Non-Negotiable Rules
- Do NOT run `dotnet build`, `dotnet run`, or PowerShell scripts directly in a terminal.
- If a task is missing or fails to resolve, first fix `.vscode/tasks.json` and then run the task. Do not fall back to terminal execution.
- Always monitor the task terminal output and, when relevant, summarize the latest file under `logs/` (e.g., `build-*.log`, `run-*.log`).

If Tasks Are Missing or Broken
1) Patch `.vscode/tasks.json` to restore the required tasks (labels above).
2) Re-run via VS Code tasks (not terminal).
3) On failure, open and summarize the log in `logs/`.

Rationale
- Prevents DLL locking by ensuring pre-run cleanup occurs in scripts.
- Centralizes diagnostics in timestamped logs.
- Keeps behavior consistent and reproducible for all operators.

Scope
- These rules apply to ALL build and run operations inside this repository.

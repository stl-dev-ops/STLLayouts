# STLLayouts Master Plan (Incremental Delivery)

This is the canonical “big picture” plan for the STLLayouts repository. It is written to be executed **piece-by-piece** with strong traceability:

- Every milestone is decomposed into small deliverables.
- Every deliverable must be tracked by a GitHub issue.
- Every PR and every commit must reference the issue and include delta time.
- Progress must remain visible at all times via:
  - `docs/MASTER_PLAN.md` (this file)
  - `TODO.md` (current sprint scope)
  - `CHANGELOG.md` (user-visible deltas)

## North Star
A stable, governed document-generation system for STL manufacturing that:
- Uses Office templates (`.docx`, `.xlsx`) with repeatable sections and robust token replacement.
- Uses a schema-driven variable mapping layer (single values + list/table mappings).
- Has predictable build/run workflows via repo scripts.
- Has auditability (issues, PRs, commit trail, and time spent).

## Operating Rules (Traceability)
For every change:
- Create a GitHub issue.
- Fill in `Time spent (hh:mm:ss)` in the issue body.
- Open a PR (preferred) or push to `master` only when governance checks pass.
- Every commit must include:
  - `#<issue>` somewhere in the commit text
  - `Issue: https://github.com/stl-dev-ops/STLLayouts/issues/<issue>` (trailer)
  - `Delta-Time: hh:mm:ss` (trailer)

## Milestones

### M0 — Governance + Build/Run Discipline (COMPLETED)
**Goal**: enforce script-driven execution, artifact guardrails, and issue/time traceability.

Deliverables:
- [x] Repo scripts are the canonical build/run entry points (`scripts/*.ps1`).
- [x] CI guardrails block tracked `temp/` and `logs/` artifacts (except `logs/.gitkeep`).
- [x] PR template includes issue + delta time.
- [x] Issue templates include `Time spent (hh:mm:ss)`.
- [x] CI enforces commit message issue + issue URL + delta time.

Acceptance criteria:
- `scripts/build.ps1` succeeds.
- `scripts/verify-repo-clean.ps1` passes.
- `.github/workflows/repo-governance.yml` blocks non-compliant commits/PRs.

---

### M1 — Variable Mapping Reliability (IN PROGRESS)
**Goal**: mappings are predictable, validated, and support both scalar and collection contexts.

Deliverables:
- [ ] Standardize mapping kinds (`Single` vs `List`) end-to-end (UI → services → DB).
- [ ] Ensure collection schema discovery is stable and cached where appropriate.
- [ ] Add repeatable list mapping validation (missing keys, empty rows, type mismatches).

Acceptance criteria:
- UI can author/edit mapping kinds without corruption.
- Mapping validation failures are user-friendly and logged.
- Export scripts under `scripts/` produce consistent results.

---

### M2 — Word Repeat Blocks + Token Replacement (IN PROGRESS)
**Goal**: `.docx` generation supports repeat sections and robust token replacement even when Word splits tokens across runs.

Deliverables:
- [ ] Support `{{#Collection}}` / `{{/Collection}}` row expansion reliably.
- [ ] Support tokens `{{Collection.Field}}` within repeated rows.
- [ ] Ensure scalar replacement `{{Var}}` works across typical Word run splitting.

Acceptance criteria:
- A template with table repeat markers expands rows correctly.
- Tokens are replaced reliably for both scalar and repeated content.

---

### M3 — Template Management + Versioning
**Goal**: uploading a template with an existing name can create a new version with user confirmation.

Deliverables:
- [ ] Implement template versioning when uploading an existing `TemplateName`.
- [ ] Add UI prompt (“Create new version” vs “Cancel”).
- [ ] Version history visible in template management.

Acceptance criteria:
- Duplicate name does not hard-fail; user can create a version.
- Versions are persisted and selectable.

---

### M4 — Authoring Documentation
**Goal**: users can author templates and mappings without tribal knowledge.

Deliverables:
- [ ] `TEMPLATE_GUIDELINES.md` includes repeat section authoring guide.
- [ ] Clear examples for `{{Var}}`, `{{#Collection}}`, `{{Collection.Field}}`.

Acceptance criteria:
- Docs are enough for a user to author a working repeat-table template.

---

## Progress Reporting
Whenever work starts/ends:
- Update `TODO.md` sprint items (and keep the Active Sprint non-placeholder).
- Update this master plan milestone checklists (mark deliverables `[x]` when done).
- Update `CHANGELOG.md` for user-visible behavior changes.

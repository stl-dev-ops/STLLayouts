# TODO (Sprint Backlog)

This is the canonical backlog. It is structured into sprints so humans and Copilot can focus on a small, current scope.

## Rules
- Only one **Active Sprint**.
- Each item must include acceptance criteria.
- Keep items small enough to complete and commit frequently.

## Active Sprint
**Sprint**: Sprint 2026-01 (Stabilization)
**Dates (optional)**: 2026-01-09 → 2026-01-24
**Sprint Goal**: Stabilize variable mapping + repeating sections; keep commits small and continuously push for review.

### Committed Work
1. **Repeat sections + variable mapping stabilization**
	- Outcome: Word templates using `{{#Collection}}...{{/Collection}}` expand reliably and token replacement works even when Word splits tokens across runs.
	- Scope (files/modules): `src/STLLayouts.OfficeGen`, `src/STLLayouts.Services`, SQL views/patches under `SQL/`.
	- Acceptance criteria:
		- Build succeeds via `scripts/build.ps1`
		- Governance checks pass (`scripts/verify-repo-clean.ps1`)
		- List/table placeholders are correctly expanded and populated
	- Non-goals: Implementing full template versioning UI workflow.

### Stretch Work (optional)
1.

## Next Sprint (Draft)
**Sprint**: Sprint 2026-02 (Template versioning)
**Sprint Goal**: Implement template versioning + duplicate-name UX.
1.

## Backlog
Items not yet scheduled.
-

## Definition of Done (DoD)
- Acceptance criteria satisfied
- Tests updated/added where relevant
- Docs updated if behavior/architecture changed
- Frequent commits and pushes during implementation

## Template Management
- [ ] Implement template versioning when uploading a template with an existing `TemplateName` (create `TemplateVersion` instead of failing)
- [ ] Add UI prompt on upload when a duplicate name is detected ("Create new version" vs "Cancel")

## Document Generation
- [ ] Add a small "repeat section" authoring guide to `TEMPLATE_GUIDELINES.md` for `{{#Collection}}` / `{{/Collection}}` and `{{Collection.Field}}` usage

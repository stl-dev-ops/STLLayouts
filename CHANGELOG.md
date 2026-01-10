# Changelog

Record notable user-visible changes and behavior changes.

## Unreleased
--
+- Variable mappings: added support for list/table (`MappingKind.List`) mappings and collection materialization.
+- Word generation: repeat blocks (`{{#Collection}}...{{/Collection}}`) expand table rows; token replacement now tolerates Word run-splitting.
+- Governance: added CI guardrails and scripts for preventing tracked `temp/`/`logs/` artifacts and enforcing script-based build/run.

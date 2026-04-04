# PR Documentation Template

Use this template when creating documentation for merged PRs.

---

## PR Title

**Date:** YYYY-MM-DD  
**PR:** #[number] - [title]  
**Status:** [🚧 In Progress / ✅ Merged / ❌ Closed]  
**Branch:** `[source]` → `[target]`

---

## Summary

Brief description of what this PR accomplishes (1-2 sentences).

---

## What Changed

### New Files

| File | Purpose |
|------|---------|
| `lib/path/to/file.dart` | Description |

### Modified Files

| File | Change |
|------|--------|
| `lib/path/to/file.dart` | What changed |

### Deleted Files

| File | Reason |
|------|--------|
| `lib/path/to/file.dart` | Why deleted |

---

## Architecture Decisions

### Decision 1: [Title]
**Context:** [Why was this decision needed?]

**Decision:** [What did you decide?]

**Rationale:** [Why this choice?]

**Impact:** [What changed as a result?]

---

## Testing

- [ ] Unit tests added
- [ ] Widget tests added  
- [ ] Integration tests added
- [ ] Manual testing performed

### Test Coverage

| Category | Tests | Status |
|----------|-------|--------|
| Feature X | N tests | ✅/❌ |

---

## Compliance

### Architecture Rules

| Rule | Compliance | Notes |
|------|------------|-------|
| Rule 10 | ✅/❌ | Comments |
| Rule 11 | ✅/❌ | Named constants |
| Rule 12 | ✅/❌ | One class per file |
| Rule 22 | ✅/❌ | const constructors |
| Rule 27 | ✅/❌ | Package imports |

### Linter Status

```
flutter analyze lib/
[No issues found! ✅ / N issues found ❌]
```

---

## Migration Guide

### Breaking Changes

[Describe any breaking changes and how to migrate]

### New Dependencies

[New packages added, version updates]

---

## Future Considerations

### Potential Enhancements

[List future improvements or related features]

### Technical Debt

[Any shortcuts taken that should be revisited]

---

## References

### Documentation
- [Related Doc 1](../../path/to/doc.md)
- [Related Doc 2](../../path/to/doc.md)

### Code
- [Implementation](../../../../lib/path/to/code.dart)
- [Tests](../../../../test/path/to/tests.dart)

---

## Commits

| Commit | Description |
|--------|-------------|
| `abc1234` | Brief description |

**Final Commit:** `hash` - [commit message]

---

*Documented: YYYY-MM-DD*  
*Author: [Name]*  
*Reviewed by: [Name]*

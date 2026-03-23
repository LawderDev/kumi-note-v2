# Contributing to Kumi Note

## Git Configuration

**Required:** Configure your git author before making any commits.

```bash
git config user.email "kenny.ramin433@gmail.com"
git config user.name "Kenny"
```

## Branch Strategy

| Branch | Purpose |
|--------|---------|
| `master` | Production-ready code (protected) |
| `staging` | Development integration |
| `feature/*` | New features |
| `fix/*` | Bug fixes |
| `chore/*` | Maintenance tasks |

### Creating a Feature Branch

```bash
git checkout staging
git pull origin staging
git checkout -b feature/1-2-core-database-infrastructure
```

### Branch Naming Convention

Format: `{type}/{epic}-{story}-{name}`

Examples:
- `feature/1-2-core-database-infrastructure`
- `feature/2-1-notes-list-page`
- `fix/search-performance`
- `chore/update-dependencies`

## Commit Messages

Use conventional commits format:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `refactor`: Code refactoring
- `test`: Adding tests
- `docs`: Documentation changes
- `chore`: Maintenance tasks

### Examples

```
feat(database): implement Drift ORM and sqlite-vec integration
fix(search): resolve debounce issue in search
test(theme): add unit tests for design tokens
docs(readme): update installation instructions
```

## Pull Request Process

1. **Create PR from feature branch to `staging`**
2. **Fill PR template:**
   - Link to relevant story/epic
   - Describe changes
   - List acceptance criteria met
3. **Ensure CI passes:**
   - `flutter analyze` - no errors
   - `flutter test` - all tests pass
4. **Request review**
5. **Address review feedback**
6. **Squash merge** when approved

## Code Style

- Follow `very_good_analysis` linter rules
- One class per file
- Descriptive variable/function names
- Use single quotes for strings
- Always use `const` constructors when possible

## Architecture

Feature-Driven + Clean Architecture:

```
lib/
├── core/           # Shared infrastructure
└── features/
    └── {feature}/
        ├── data/       # Repository implementations, data sources
        ├── domain/    # Entities, interfaces, use cases
        └── presentation/  # Providers, pages, widgets
```

## Testing

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit/domain/entities/note_test.dart

# Run with coverage
flutter test --coverage
```

## Questions?

Open an issue for questions or discussions about features/bugs.
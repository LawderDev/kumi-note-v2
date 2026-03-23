# Agent Instructions for Kumi Note

## Git Configuration

**CRITICAL:** All commits must use the correct author email.

```bash
# Set git config for this repository
git config user.email "kenny.ramin433@gmail.com"
git config user.name "Kenny"
```

### Required Git Configuration

| Setting | Value |
|---------|-------|
| `user.email` | `kenny.ramin433@gmail.com` |
| `user.name` | `Kenny` |

### Before Making Any Commits

1. Verify git config:
   ```bash
   git config user.email  # Should output: kenny.ramin433@gmail.com
   git config user.name   # Should output: Kenny
   ```

2. If incorrect, fix immediately:
   ```bash
   git config user.email "kenny.ramin433@gmail.com"
   git config user.name "Kenny"
   ```

### Branch Naming Convention

- Feature branches: `feature/{epic}-{story}-{name}`
  - Example: `feature/1-2-core-database-infrastructure`
- Fix branches: `fix/{description}`
- Chore branches: `chore/{description}`

### Commit Message Convention

Use conventional commits:
- `feat(scope): description` - New feature
- `fix(scope): description` - Bug fix
- `refactor(scope): description` - Code refactoring
- `test(scope): description` - Adding tests
- `docs: description` - Documentation changes
- `chore: description` - Maintenance tasks

### Branch Workflow

- `master` - Production (protected)
- `staging` - Development integration (force push allowed)
- Feature branches → PR to `staging` → PR to `master`

## Development Workflow

1. Create branch from `staging`
2. Implement changes
3. Run `flutter analyze` - must pass with no errors
4. Run `flutter test` - must pass with all tests green
5. Commit with correct author (verify email!)
6. Push to origin
7. Create PR against `staging`

## Code Style

- Follow `very_good_analysis` linter rules
- One class per file
- Descriptive names, no abbreviations (use `note` not `n`)
- Feature-Driven + Clean Architecture
- Direct imports (no barrel exports)

### Architecture Pattern

```
lib/
├── core/                    # Shared across features
│   ├── database/           # SQLite with Drift ORM
│   ├── llm/                # LLM FFI bindings
│   ├── theme/              # Design tokens
│   ├── routing/           # Navigation
│   └── preferences/       # User settings
├── features/              # Feature-specific code
│   ├── notes/
│   │   ├── data/          # Data sources, models, repository impl
│   │   ├── domain/        # Entities, repository interfaces, use cases
│   │   └── presentation/  # Providers, pages, widgets
│   └── ...
└── main.dart
```

### Key Technologies

| Category | Technology |
|----------|------------|
| Framework | Flutter |
| State Management | Riverpod 2.x |
| Navigation | go_router |
| Database | Drift (SQLite) |
| LLM | llama.cpp FFI |
| Vector Search | sqlite-vec |
| Models | freezed |
| Testing | flutter_test + mocktail + patrol |

## Testing Standards

```bash
# Unit and widget tests
flutter test

# Analyze code
flutter analyze

# Integration tests (requires connected device)
flutter test integration_test/
```

### Test Structure

```
test/
├── unit/              # Unit tests (domain layer)
├── widget/            # Widget tests (presentation layer)
├── integration/       # Integration tests
├── helpers/           # Test utilities
├── fixtures/          # Test data
└── mocks/             # Mock classes
```

## Linting Rules

The project uses `very_good_analysis` with strict rules. Key rules:

- Always use `const` constructors
- Avoid unnecessary bracing
- Document public APIs
- Handle all async errors
- No unnecessary imports
- Prefer single quotes

## Pull Request Guidelines

1. PR title format: `feat(scope): description` or `fix(scope): description`
2. Link to relevant story/epic in description
3. Ensure all CI checks pass
4. Request review from maintainers
5. Squash merge preferred
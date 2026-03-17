# Kumi Note

AI-powered note taking app with local LLM semantic search.

## Project Overview

Kumi Note is a privacy-first note-taking application that uses local LLM technology to provide semantic search capabilities. All data stays on your device - no cloud, no tracking.

## Architecture

This project follows **Feature-Driven + Clean Architecture**:

```
lib/
├── core/                    # Shared across features
│   ├── database/           # SQLite with Drift ORM
│   ├── llm/                # LLM FFI bindings
│   ├── theme/              # Design tokens
│   ├── routing/           # Navigation
│   └── preferences/       # User settings
├── features/              # Feature-specific code
│   ├── notes/             # Note management
│   ├── kumi/              # Semantic search
│   ├── settings/          # App settings
│   ├── onboarding/         # Tutorial flow
│   └── insights/           # Statistics
└── main.dart
```

Each feature follows Clean Architecture:
- `data/` — Data sources, models, repository implementations
- `domain/` — Entities, repository interfaces, use cases
- `presentation/` — Providers, pages, widgets

## Tech Stack

| Category | Technology |
|----------|------------|
| Framework | Flutter |
| State Management | Riverpod 2.x |
| Navigation | go_router |
| Database | Drift (SQLite) |
| LLM | llama.cpp FFI |
| Vector Search | sqlite-vec |

## Getting Started

### Prerequisites

- Flutter SDK 3.38+ (Dart 3.10+)
- Android Studio / Xcode (for platform builds)

### Installation

```bash
# Clone the repository
git clone git@github.com:LawderDev/kumi-note-v2.git
cd kumi-note-v2

# Install dependencies
flutter pub get

# Run code generation
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

### Running Tests

```bash
# Unit and widget tests
flutter test

# Analyze code
flutter analyze

# Integration tests (requires connected device)
flutter test integration_test/
```

## Development Guidelines

- **Code Style:** Follow `very_good_analysis` linter rules
- **Naming:** Descriptive names, no abbreviations
- **Files:** One class per file, direct imports
- **Pattern:** Feature-Driven + Clean Architecture

## Project Status

🚧 **Active Development** - Currently in early development phase.

## License

Private project - All rights reserved.
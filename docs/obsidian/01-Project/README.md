# Project Overview

## What is Kumi Note?

Kumi Note is a **privacy-first, AI-powered note-taking application** with local LLM semantic search. All data stays on your device - no cloud, no tracking.

## Key Features

- **Note Management**: Create, edit, organize notes
- **Semantic Search**: AI-powered search using local LLM
- **Local Processing**: Everything happens on-device
- **Clean UI**: Following Material Design 3 with custom Shiba theme

## Tech Stack

| Category | Technology | Version |
|----------|------------|---------|
| Framework | Flutter | 3.38+ |
| Language | Dart | 3.10+ |
| State Management | Riverpod | 2.x |
| Navigation | go_router | ^14.6.2 |
| Database | Drift (SQLite) | Latest |
| LLM | llama.cpp FFI | Via FFI |
| Vector Search | sqlite-vec | Latest |

## Architecture Pattern

**Feature-Driven + Clean Architecture**

```
lib/
├── core/                    # Shared infrastructure
│   ├── theme/              # Design tokens (implemented)
│   ├── database/           # Drift ORM setup
│   ├── llm/                # LLM FFI bindings
│   └── routing/            # Navigation
│
└── features/               # Feature modules
    ├── notes/              # Note CRUD
    ├── kumi/               # Semantic search
    ├── settings/           # App preferences
    ├── onboarding/         # First-run tutorial
    └── insights/           # Statistics & analytics
```

Each feature follows **Clean Architecture layers**:
- `data/` — Data sources, models, repository implementations
- `domain/` — Entities, repository interfaces, use cases
- `presentation/` — Providers, pages, widgets

## Current Status

### ✅ Implemented

- **Story 1.3**: Core Theme and Design Tokens (PR #3)
  - Complete design token system (colors, spacing, typography)
  - Responsive breakpoints
  - Animation tokens
  - 67 tests passing, 100% linter compliance

### 🚧 In Progress

- Database infrastructure (Story 1.2)
- Note management features

### 📋 Upcoming

- LLM integration
- Semantic search (Kumi feature)
- Settings
- Onboarding
- Insights/Analytics

## Quick Links

- [[03-Design-System/Implementation|Design System]] - How tokens map to code
- [[04-Development/Code-Conventions|Code Conventions]] - Architecture guidelines

## Development Principles

1. **Privacy First**: All data local, no external calls
2. **Clean Code**: Self-documenting, no magic numbers/strings
3. **Test Coverage**: Unit tests for business logic
4. **Type Safety**: Full null safety, no `dynamic`

---

*For detailed architecture, see [[02-Architecture/Overview|Architecture Overview]]*

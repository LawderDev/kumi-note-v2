# Code Conventions

This document contains all 40 architecture rules for Kumi Note development. These rules ensure code quality, maintainability, and consistency.

---

## 1-10: Core Principles

### Rule 1: Conventions
**Follow very_good_analysis linter rules strictly.**

✅ **Good:**
```bash
flutter analyze  # Shows no issues
```

❌ **Bad:**
```bash
flutter analyze  # Shows warnings
```

---

### Rule 2: Single Responsibility
**Each class/function does one thing well.**

✅ **Good:**
```dart
class NoteRepository {
  Future<Note> getNote(String id) async { ... }
}

class NoteValidator {
  bool isValid(Note note) { ... }
}
```

❌ **Bad:**
```dart
class NoteManager {  // Does too much
  Future<Note> getNote(String id) async { ... }
  bool isValid(Note note) { ... }
  void sendEmail(Note note) { ... }
}
```

---

### Rule 3: Precise Types
**Use precise types, avoid `var`, `dynamic`, `Object`. No unnecessary typedefs.**

✅ **Good:**
```dart
List<Note> notes = await repository.getNotes();
Future<void> saveNote(Note note) async { ... }
```

❌ **Bad:**
```dart
var notes = await repository.getNotes();  // Imprecise
dynamic result = api.call();              // Avoid dynamic
```

---

### Rule 4: Naming
**Descriptive names, no abbreviations. Functions are verbs, classes are nouns.**

✅ **Good:**
```dart
class NoteRepository { }
Future<Note> getNoteById(String id) { }
bool isNoteValid(Note note) { }
```

❌ **Bad:**
```dart
class Repo { }           // Abbreviation
Future<Note> get(String id) { }  // Not descriptive
bool valid(Note n) { }    // Abbreviations
```

---

### Rule 5: Minimalism
**Use `const`, providers, async only when necessary.**

✅ **Good:**
```dart
static const EdgeInsets padding = EdgeInsets.all(16);
```

❌ **Bad:**
```dart
EdgeInsets padding = EdgeInsets.all(16);  // Could be const
```

---

### Rule 6: Paradigm
**Follow Flutter/Dart idiomatic patterns.**

✅ **Good:**
```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) { ... }
}
```

---

### Rule 7: Cast `as`
**Use for JSON parsing only. Use `is` for type checking.**

✅ **Good:**
```dart
final data = json['user'] as Map<String, dynamic>;
if (value is String) { ... }
```

❌ **Bad:**
```dart
final user = obj as User;  // Dangerous
```

---

### Rule 8: Transformations
**`fromJson`/`toJson` in class or use freezed.**

✅ **Good:**
```dart
@freezed
class Note with _$Note {
  factory Note.fromJson(Map<String, dynamic> json) = _Note;
  Map<String, dynamic> toJson();
}
```

---

### Rule 9: Widgets
**Class for reusable/stateful, inline for simple one-off.**

✅ **Good:**
```dart
// Reusable - class
class PrimaryButton extends StatelessWidget { ... }

// One-off - inline
ElevatedButton(onPressed: () {}, child: Text('Save'))
```

---

### Rule 10: Comments
**NO documentation comments (`///`) required. Code must be 100% self-documenting through clear, descriptive naming. Comments ONLY for complex logic that cannot be expressed in code.**

✅ **Good:**
```dart
class NoteRepository {
  Future<Note> getNoteById(String id) async { ... }
}
```

❌ **Bad:**
```dart
/// Repository for notes  // Unnecessary comment
class NoteRepository {
  /// Gets note by ID  // Unnecessary comment
  Future<Note> getNoteById(String id) async { ... }
}
```

---

## Rule 11: Named Constants (NEW)

**No magic numbers or strings with semantic meaning. Extract to named constants. Exceptions: 0, 1, 100 (percentages), obvious iteration counters. When in doubt, name it.**

✅ **Good:**
```dart
if (screenWidth >= KumiBreakpoints.tablet) {
  return KumiDimensions.topbarHeightTablet;
}
```

❌ **Bad:**
```dart
if (screenWidth >= 768) {  // Magic number - what is 768?
  return 64;  // Magic number
}
```

---

## 12-18: Structure & Organization

### Rule 12: Files
**One class per file, direct imports (no barrel exports).**

✅ **Good:**
```dart
// lib/core/theme/colors.dart
class KumiColors { ... }

// Usage:
import 'package:kumi_note/core/theme/colors.dart';
```

❌ **Bad:**
```dart
// lib/core/theme.dart (barrel export) - AVOID
export 'colors.dart';
export 'spacing.dart';
```

---

### Rule 13: Order
**Imports → Constants → Class → Private methods.**

✅ **Good:**
```dart
import 'package:flutter/material.dart';

const double defaultPadding = 16;

class MyClass {
  final String name;
  
  MyClass(this.name);
  
  void publicMethod() { ... }
  
  void _privateMethod() { ... }
}
```

---

### Rule 14: Null Safety
**Use `?` for nullable, `??` for defaults, early return for null checks.**

✅ **Good:**
```dart
String? optionalName;
final name = optionalName ?? 'Default';

void process(Note? note) {
  if (note == null) return;  // Early return
  // ...
}
```

---

### Rule 15: Error Handling
**Create custom exceptions, try/catch at appropriate level.**

✅ **Good:**
```dart
class NoteNotFoundException implements Exception {
  final String id;
  NoteNotFoundException(this.id);
}

Future<Note> getNote(String id) async {
  try {
    // ...
  } on DatabaseException catch (e) {
    throw NoteNotFoundException(id);
  }
}
```

---

### Rule 16: Async Patterns
**`Future.wait` for parallel, `await for` streams, `compute()` for Isolates.**

✅ **Good:**
```dart
final results = await Future.wait([
  fetchNotes(),
  fetchSettings(),
]);
```

---

### Rule 17: Early Return
**Use guard clauses, avoid nested if-else.**

✅ **Good:**
```dart
void processNote(Note? note) {
  if (note == null) return;
  if (!note.isValid) return;
  
  // Main logic here
}
```

❌ **Bad:**
```dart
void processNote(Note? note) {
  if (note != null) {
    if (note.isValid) {
      // Nested, hard to read
    }
  }
}
```

---

### Rule 18: If Statements
**Never use single-line if statements. Always use block format.**

✅ **Good:**
```dart
if (isValid) {
  process();
}
```

❌ **Bad:**
```dart
if (isValid) process();  // Avoid
```

---

## 19-28: Flutter & Dart

### Rule 19: Block Format
**Opening brace on same line, body indented, closing brace on its own line.**

✅ **Good:**
```dart
class MyClass {
  void method() {
    if (condition) {
      doSomething();
    }
  }
}
```

---

### Rule 20: Riverpod
**`watch` in build(), `read` in callbacks, `listen` for side effects.**

✅ **Good:**
```dart
class MyPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesProvider);  // watch in build
    
    return ElevatedButton(
      onPressed: () {
        ref.read(notesProvider.notifier).add(note);  // read in callback
      },
    );
  }
}
```

---

### Rule 21: Testing
**Descriptive names, groups, mocktail for mocks.**

✅ **Good:**
```dart
group('KumiColors', () {
  test('primary color is correct', () {
    expect(KumiColors.primary, const Color(0xFFE8751A));
  });
});
```

---

### Rule 22: Performance
**`const` constructors, `ListView.builder` for lists.**

✅ **Good:**
```dart
const SizedBox(height: 16);  // const constructor

ListView.builder(  // builder for long lists
  itemCount: notes.length,
  itemBuilder: (context, index) => NoteItem(notes[index]),
)
```

---

### Rule 23: Keys
**`ValueKey` for lists, `UniqueKey` for forced rebuild.**

✅ **Good:**
```dart
ListView(
  children: notes.map((note) => 
    NoteItem(
      key: ValueKey(note.id),  // Stable key
      note: note,
    ),
  ).toList(),
)
```

---

### Rule 24: State
**StatefulWidget for local, Provider for global.**

✅ **Good:**
```dart
// Global state - Riverpod
final notesProvider = StateNotifierProvider...

// Local state - StatefulWidget
class ExpandableCard extends StatefulWidget { ... }
```

---

### Rule 25: Collections
**Use Iterable methods, immutable collections.**

✅ **Good:**
```dart
final filtered = notes.where((n) => n.isValid).toList();
final titles = notes.map((n) => n.title);
```

---

### Rule 26: Code Gen
**Run `build_runner` after model changes.**

✅ **Good:**
```bash
dart run build_runner build --delete-conflicting-outputs
```

---

### Rule 27: Formatting
**Trailing commas, single quotes, 80 char line.**

✅ **Good:**
```dart
Container(
  padding: const EdgeInsets.all(16),  // Trailing comma
  child: const Text('Hello'),  // Single quotes
)
```

---

### Rule 28: Import Order
**Dart → Flutter → Packages → Local.**

✅ **Good:**
```dart
import 'dart:async';                           // Dart

import 'package:flutter/material.dart';        // Flutter
import 'package:riverpod/riverpod.dart';       // Packages

import 'package:kumi_note/core/theme/colors.dart';  // Local
```

---

## 29-40: Advanced Patterns

### Rule 29: Pure Functions
**Deterministic, no side effects, no external dependencies.**

✅ **Good:**
```dart
bool isNoteValid(Note note) {
  return note.title.isNotEmpty && note.content.isNotEmpty;
}
```

---

### Rule 30: Lifecycle
**`initState` for setup, `dispose` for cleanup, `mounted` check for async.**

✅ **Good:**
```dart
class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }
  
  Future<void> _loadData() async {
    final data = await fetchData();
    if (mounted) {  // Always check
      setState(() { ... });
    }
  }
}
```

---

### Rule 31: Memory
**Always dispose Controllers, ScrollControllers, AnimationControllers.**

✅ **Good:**
```dart
class _MyWidgetState extends State<MyWidget> {
  final _controller = TextEditingController();
  
  @override
  void dispose() {
    _controller.dispose();  // Always dispose
    super.dispose();
  }
}
```

---

### Rule 32: Logging
**Use `logger` package, filter by environment.**

✅ **Good:**
```dart
import 'package:logger/logger.dart';

final _logger = Logger();

void processNote(Note note) {
  _logger.d('Processing note: ${note.id}');
}
```

---

### Rule 33: Async/Await
**`await` in `for` is OK in Dart (unlike JS), `Future.wait` for parallel.**

✅ **Good:**
```dart
await for (final event in stream) { ... }

final results = await Future.wait([
  task1(),
  task2(),
]);
```

---

### Rule 34: Dependency Injection
**`ref.watch` (reactive), `ref.read` (actions), `ref.listen` (side effects).**

✅ **Good:**
```dart
// Watch - rebuilds when provider changes
final notes = ref.watch(notesProvider);

// Read - one-time access
ref.read(notesProvider.notifier).add(note);

// Listen - react to changes
ref.listen(notesProvider, (prev, next) {
  showNotification();
});
```

---

## Quick Reference

| Category | Rules |
|----------|-------|
| Core | 1-11 |
| Structure | 12-18 |
| Flutter | 19-28 |
| Advanced | 29-40 |

## Enforcement

All rules are enforced by:
1. `very_good_analysis` linter
2. Code review checklist
3. CI/CD pipeline

---

*See [[../../lib|Source Code]] for implementation examples.*

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'package:kumi_note/core/database/tables/embeddings_table.dart';
import 'package:kumi_note/core/database/tables/notes_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [NotesTable, EmbeddingsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) async => migrator.createAll(),
    onUpgrade: (migrator, fromVersion, toVersion) async {},
  );
}

QueryExecutor _openConnection() => driftDatabase(name: 'kumi_note_db');

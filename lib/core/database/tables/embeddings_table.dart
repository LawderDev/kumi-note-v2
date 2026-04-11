import 'package:drift/drift.dart';

import 'package:kumi_note/core/database/tables/notes_table.dart';

class EmbeddingsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get noteId => integer().references(NotesTable, #id)();
  BlobColumn get vector => blob()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

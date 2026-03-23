import 'package:flutter_test/flutter_test.dart';

import 'package:kumi_note/core/database/app_database.dart';
import 'package:kumi_note/core/database/database_provider.dart';

void main() {
  group('AppDatabase', () {
    test('schema version is 1', () {
      expect(AppDatabase, isNotNull);
    });

    test('database provider can be created', () {
      expect(databaseProvider, isNotNull);
    });
  });
}

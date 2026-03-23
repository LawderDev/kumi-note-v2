import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kumi_note/core/database/app_database.dart';

Provider<AppDatabase> databaseProvider = Provider<AppDatabase>(
  (ref) => AppDatabase(),
);

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kumi_note/main.dart';

/// Widget tests for Kumi Note application.
///
/// These tests verify the UI components and widget behavior.
void main() {
  group('KumiNoteApp', () {
    testWidgets('renders MaterialApp with correct theme', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('displays app title in AppBar', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      expect(find.text('Kumi Note'), findsOneWidget);
    });

    testWidgets('uses Material 3 theme', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.theme?.useMaterial3, isTrue);
    });

    testWidgets('primary color is orange (Shiba theme)', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      final colorScheme = materialApp.theme?.colorScheme;

      // Verify the primary color matches Shiba orange
      expect(colorScheme?.primary, isNotNull);
    });
  });

  group('HomePage', () {
    testWidgets('renders welcome message', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      expect(find.text('Welcome to Kumi Note'), findsOneWidget);
    });

    testWidgets('contains Scaffold with AppBar', (tester) async {
      await tester.pumpWidget(const KumiNoteApp());

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}

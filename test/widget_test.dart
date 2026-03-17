import 'package:flutter_test/flutter_test.dart';

import 'package:kumi_note/main.dart';

void main() {
  testWidgets('App renders correctly', (tester) async {
    await tester.pumpWidget(const KumiNoteApp());

    expect(find.text('Kumi Note'), findsOneWidget);
    expect(find.text('Welcome to Kumi Note'), findsOneWidget);
  });
}

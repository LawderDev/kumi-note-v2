import 'package:flutter/material.dart';
import 'package:kumi_note/app/home/home_page.dart';
import 'package:kumi_note/core/theme/kumi_theme.dart';

void main() => runApp(const KumiNoteApp());

class KumiNoteApp extends StatelessWidget {
  const KumiNoteApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Kumi Note',
    theme: createKumiTheme(),
    home: const HomePage(),
  );
}

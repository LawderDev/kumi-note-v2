import 'package:flutter/material.dart';

/// Entry point for the Kumi Note application.
void main() => runApp(const KumiNoteApp());

/// Main application widget for Kumi Note.
///
/// This widget configures the app's theme and home page.
class KumiNoteApp extends StatelessWidget {
  /// Creates a [KumiNoteApp].
  const KumiNoteApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Kumi Note',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE8751A)),
      useMaterial3: true,
    ),
    home: const HomePage(),
  );
}

/// Home page widget displaying the welcome message.
///
/// This is the main landing screen for the application.
class HomePage extends StatelessWidget {
  /// Creates a [HomePage].
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Kumi Note'),
    ),
    body: const Center(child: Text('Welcome to Kumi Note')),
  );
}

import 'package:flutter/material.dart';

/// Kumi Note shadow tokens for elevation effects.
class KumiShadows {
  KumiShadows._();

  /// 0 1px 2px rgba(0,0,0,0.05) - Élévation légère
  static List<BoxShadow> get shadowSm => [
    BoxShadow(
      color: const Color(0x0D000000), // 5% opacity
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  /// 0 4px 6px rgba(0,0,0,0.1) - Cards, FAB
  static List<BoxShadow> get shadowMd => [
    BoxShadow(
      color: const Color(0x1A000000), // 10% opacity
      blurRadius: 6,
      offset: const Offset(0, 4),
    ),
  ];

  /// 0 10px 15px rgba(0,0,0,0.1) - Bottom sheets, modals
  static List<BoxShadow> get shadowLg => [
    BoxShadow(
      color: const Color(0x1A000000), // 10% opacity
      blurRadius: 15,
      offset: const Offset(0, 10),
    ),
  ];

  /// Convert to single BoxShadow for BoxDecoration
  static BoxShadow get boxSm => shadowSm.first;
  static BoxShadow get boxMd => shadowMd.first;
  static BoxShadow get boxLg => shadowLg.first;
}

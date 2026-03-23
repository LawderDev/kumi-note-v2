import 'package:flutter/material.dart';

/// Kumi Note color tokens following the Shiba palette.
///
/// All colors are defined as static const. Use directly via `KumiColors.primary`.
class KumiColors {
  const KumiColors._();

  // Primary palette
  static const Color primary = Color(0xFFE8751A);
  static const Color primaryLight = Color(0xFFFDB874);
  static const Color primaryLighter = Color(0xFFFFF4E8);

  // Backgrounds
  static const Color background = Color(0xFFFFFFFF);
  static const Color surfaceCreme = Color(0xFFFFF9F5);

  // Text colors
  static const Color textPrimary = Color(0xFF2D2013);
  static const Color textSecondary = Color(0xFF6B5A4A);
  static const Color textDisabled = Color(0xFF9CA3AF);
  static const Color white = Color(0xFFFFFFFF);

  // Semantic colors
  static const Color error = Color(0xFFEF4444);
  static const Color success = Color(0xFF22C55E);

  // UI colors
  static const Color overlay = Color(0x80000000);
  static const Color divider = Color(0xFFE5E7EB);
  static const Color borderLight = Color(0xFFF3F4F6);

  // Semantic aliases
  static const Color colorInteractive = primary;
  static const Color colorSurfaceElevated = white;
  static const Color colorSurfaceMuted = surfaceCreme;
  static const Color colorTextOnPrimary = white;
}

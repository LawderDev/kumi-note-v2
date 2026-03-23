import 'package:flutter/material.dart';

/// Kumi Note typography tokens.
///
/// Font sizes and weights for consistent text styling.
class KumiTypography {
  KumiTypography._();

  // Font sizes
  /// 12px - Labels, captions, dates
  static const double textXs = 12.0;

  /// 14px - Texte secondaire, placeholders
  static const double textSm = 14.0;

  /// 16px - Texte principal, contenu
  static const double textBase = 16.0;

  /// 18px - Titres de section
  static const double textLg = 18.0;

  /// 20px - Titres de page
  static const double textXl = 20.0;

  /// 24px - Grands titres
  static const double text2xl = 24.0;

  // Font weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Text styles
  static TextStyle get xs => TextStyle(fontSize: textXs, fontWeight: regular);
  static TextStyle get sm => TextStyle(fontSize: textSm, fontWeight: regular);
  static TextStyle get base =>
      TextStyle(fontSize: textBase, fontWeight: regular);
  static TextStyle get lg => TextStyle(fontSize: textLg, fontWeight: semiBold);
  static TextStyle get xl => TextStyle(fontSize: textXl, fontWeight: bold);
  static TextStyle get xxl => TextStyle(fontSize: text2xl, fontWeight: bold);

  // Creates a complete TextTheme for use in ThemeData
  static TextTheme get textTheme => TextTheme(
    displayLarge: xxl,
    displayMedium: xl,
    displaySmall: lg,
    headlineLarge: xl,
    headlineMedium: lg,
    headlineSmall: base.copyWith(fontWeight: semiBold),
    titleLarge: lg,
    titleMedium: base.copyWith(fontWeight: semiBold),
    titleSmall: sm.copyWith(fontWeight: medium),
    bodyLarge: base,
    bodyMedium: sm,
    bodySmall: xs,
    labelLarge: sm.copyWith(fontWeight: medium),
    labelMedium: xs.copyWith(fontWeight: medium),
    labelSmall: xs,
  );
}

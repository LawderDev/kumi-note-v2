import 'package:flutter/material.dart';

class KumiTypography {
  KumiTypography._();

  static const double textXs = 12.0;
  static const double textSm = 14.0;
  static const double textBase = 16.0;
  static const double textLg = 18.0;
  static const double textXl = 20.0;
  static const double text2xl = 24.0;

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  static TextStyle get xs => TextStyle(fontSize: textXs, fontWeight: regular);
  static TextStyle get sm => TextStyle(fontSize: textSm, fontWeight: regular);
  static TextStyle get base =>
      TextStyle(fontSize: textBase, fontWeight: regular);
  static TextStyle get lg => TextStyle(fontSize: textLg, fontWeight: semiBold);
  static TextStyle get xl => TextStyle(fontSize: textXl, fontWeight: bold);
  static TextStyle get xxl => TextStyle(fontSize: text2xl, fontWeight: bold);

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

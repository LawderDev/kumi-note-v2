import 'package:flutter/material.dart';

class KumiTypography {
  KumiTypography._();

  static const double textXs = 12;
  static const double textSm = 14;
  static const double textBase = 16;
  static const double textLg = 18;
  static const double textXl = 20;
  static const double text2xl = 24;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static TextStyle get xs =>
      const TextStyle(fontSize: textXs, fontWeight: regular);
  static TextStyle get sm =>
      const TextStyle(fontSize: textSm, fontWeight: regular);
  static TextStyle get base =>
      const TextStyle(fontSize: textBase, fontWeight: regular);
  static TextStyle get lg =>
      const TextStyle(fontSize: textLg, fontWeight: semiBold);
  static TextStyle get xl =>
      const TextStyle(fontSize: textXl, fontWeight: bold);
  static TextStyle get xxl =>
      const TextStyle(fontSize: text2xl, fontWeight: bold);
  static TextTheme get textTheme => const TextTheme(
    displayLarge: TextStyle(fontSize: text2xl, fontWeight: bold),
    displayMedium: TextStyle(fontSize: textXl, fontWeight: bold),
    displaySmall: TextStyle(fontSize: textLg, fontWeight: semiBold),
    headlineLarge: TextStyle(fontSize: textXl, fontWeight: bold),
    headlineMedium: TextStyle(fontSize: textLg, fontWeight: semiBold),
    headlineSmall: TextStyle(fontSize: textBase, fontWeight: semiBold),
    titleLarge: TextStyle(fontSize: textLg, fontWeight: semiBold),
    titleMedium: TextStyle(fontSize: textBase, fontWeight: semiBold),
    titleSmall: TextStyle(fontSize: textSm, fontWeight: medium),
    bodyLarge: TextStyle(fontSize: textBase, fontWeight: regular),
    bodyMedium: TextStyle(fontSize: textSm, fontWeight: regular),
    bodySmall: TextStyle(fontSize: textXs, fontWeight: regular),
    labelLarge: TextStyle(fontSize: textSm, fontWeight: medium),
    labelMedium: TextStyle(fontSize: textXs, fontWeight: medium),
    labelSmall: TextStyle(fontSize: textXs, fontWeight: regular),
  );
}

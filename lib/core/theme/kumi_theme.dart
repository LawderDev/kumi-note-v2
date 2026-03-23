import 'package:flutter/material.dart';
import 'package:kumi_note/core/theme/colors.dart';
import 'package:kumi_note/core/theme/typography.dart';

class KumiTheme extends ThemeExtension<KumiTheme> {
  const KumiTheme();

  @override
  KumiTheme copyWith() => const KumiTheme();

  @override
  KumiTheme lerp(KumiTheme? other, double t) => const KumiTheme();
}

ThemeData createKumiTheme() => ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: KumiColors.primary).copyWith(
    primary: KumiColors.primary,
    onPrimary: KumiColors.white,
    surface: KumiColors.surfaceCreme,
    onSurface: KumiColors.textPrimary,
    error: KumiColors.error,
    onError: KumiColors.white,
  ),
  textTheme: KumiTypography.textTheme,
  extensions: const [KumiTheme()],
);

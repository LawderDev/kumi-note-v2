import 'package:flutter/material.dart';

import 'animations.dart';
import 'breakpoints.dart';
import 'colors.dart';
import 'dimensions.dart';
import 'radius.dart';
import 'shadows.dart';
import 'spacing.dart';
import 'typography.dart';
import 'z_index.dart';

/// Kumi Note theme extension providing design tokens to the app.
///
/// Access via `Theme.of(context).extension<KumiTheme>()`.
///
/// All token classes use static const values, so access directly:
/// - `KumiColors.primary`
/// - `KumiSpacing.spaceLg`
/// - etc.
class KumiTheme extends ThemeExtension<KumiTheme> {
  const KumiTheme();

  @override
  KumiTheme copyWith() => const KumiTheme();

  @override
  KumiTheme lerp(KumiTheme? other, double t) => const KumiTheme();
}

/// Creates the Kumi Note light theme.
ThemeData createKumiTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(
          seedColor: KumiColors.primary,
          brightness: Brightness.light,
        ).copyWith(
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
}

import 'package:flutter/material.dart';

/// Kumi Note radius tokens for border radius values.
class KumiRadius {
  KumiRadius._();

  /// 4px - Badges, tags
  static const double radiusSm = 4.0;

  /// 8px - Buttons, cards
  static const double radiusMd = 8.0;

  /// 12px - Bottom sheets, modals
  static const double radiusLg = 12.0;

  /// 16px - Cards importantes
  static const double radiusXl = 16.0;

  /// 9999px - Boutons circulaires (FAB)
  static const double radiusFull = 9999.0;

  /// BorderRadius extensions
  static BorderRadius get borderSm => BorderRadius.circular(radiusSm);
  static BorderRadius get borderMd => BorderRadius.circular(radiusMd);
  static BorderRadius get borderLg => BorderRadius.circular(radiusLg);
  static BorderRadius get borderXl => BorderRadius.circular(radiusXl);
  static BorderRadius get borderFull => BorderRadius.circular(radiusFull);

  /// Top-only border radius for bottom sheets
  static BorderRadius get borderTopLg =>
      BorderRadius.vertical(top: Radius.circular(radiusLg));
  static BorderRadius get borderTopXl =>
      BorderRadius.vertical(top: Radius.circular(radiusXl));
}

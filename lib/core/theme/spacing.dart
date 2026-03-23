import 'package:flutter/material.dart';

/// Kumi Note spacing tokens.
///
/// Based on a 4px base unit system.
class KumiSpacing {
  KumiSpacing._();

  /// 4px - Micro-espacements
  static const double spaceXs = 4.0;

  /// 8px - Padding interne boutons, icônes
  static const double spaceSm = 8.0;

  /// 12px - Espacement liste (notes)
  static const double spaceMd = 12.0;

  /// 16px - Marges contenu, padding cards
  static const double spaceLg = 16.0;

  /// 24px - Séparation sections
  static const double spaceXl = 24.0;

  /// 32px - Marges importantes
  static const double space2xl = 32.0;

  /// EdgeInsets extensions for convenient padding/margin usage
  static EdgeInsets get paddingXs => EdgeInsets.all(spaceXs);
  static EdgeInsets get paddingSm => EdgeInsets.all(spaceSm);
  static EdgeInsets get paddingMd => EdgeInsets.all(spaceMd);
  static EdgeInsets get paddingLg => EdgeInsets.all(spaceLg);
  static EdgeInsets get paddingXl => EdgeInsets.all(spaceXl);
  static EdgeInsets get padding2xl => EdgeInsets.all(space2xl);

  /// Symmetric padding horizontal
  static EdgeInsets get paddingHorizontalSm =>
      EdgeInsets.symmetric(horizontal: spaceSm);
  static EdgeInsets get paddingHorizontalMd =>
      EdgeInsets.symmetric(horizontal: spaceMd);
  static EdgeInsets get paddingHorizontalLg =>
      EdgeInsets.symmetric(horizontal: spaceLg);
  static EdgeInsets get paddingHorizontalXl =>
      EdgeInsets.symmetric(horizontal: spaceXl);

  /// Symmetric padding vertical
  static EdgeInsets get paddingVerticalSm =>
      EdgeInsets.symmetric(vertical: spaceSm);
  static EdgeInsets get paddingVerticalMd =>
      EdgeInsets.symmetric(vertical: spaceMd);
  static EdgeInsets get paddingVerticalLg =>
      EdgeInsets.symmetric(vertical: spaceLg);
  static EdgeInsets get paddingVerticalXl =>
      EdgeInsets.symmetric(vertical: spaceXl);
}

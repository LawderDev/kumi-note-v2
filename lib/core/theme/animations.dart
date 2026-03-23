import 'package:flutter/material.dart';

/// Kumi Note animation duration tokens.
class KumiAnimations {
  KumiAnimations._();

  /// 150ms - Hover, focus
  static const Duration durationFast = Duration(milliseconds: 150);

  /// 250ms - Ouverture/fermeture
  static const Duration durationNormal = Duration(milliseconds: 250);

  /// 400ms - Transitions complexes
  static const Duration durationSlow = Duration(milliseconds: 400);

  /// 3000ms - Toast sans action
  static const Duration durationToast = Duration(milliseconds: 3000);

  /// 5000ms - Toast avec action
  static const Duration durationToastAction = Duration(milliseconds: 5000);

  // Easing curves
  /// cubic-bezier(0.4, 0, 0.2, 1) - Standard
  static const Curve easeDefault = Curves.easeInOut;

  /// cubic-bezier(0.4, 0, 1, 1) - Entrée
  static const Curve easeIn = Curves.easeIn;

  /// cubic-bezier(0, 0, 0.2, 1) - Sortie
  static const Curve easeOut = Curves.easeOut;
}

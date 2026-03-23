import 'package:flutter/material.dart';

/// Kumi Note dimension tokens.
///
/// Responsive dimension values for various screen sizes.
class KumiDimensions {
  KumiDimensions._();

  // Heights - Mobile (base)
  static const double topbarHeightMobile = 52.0;
  static const double bottomTabsHeightMobile = 52.0;
  static const double kumiBarHeightMobile = 52.0;

  // Heights - Tablet
  static const double topbarHeightTablet = 64.0;
  static const double bottomTabsHeightTablet = 56.0;
  static const double kumiBarHeightTablet = 56.0;

  // Heights - Desktop
  static const double topbarHeightDesktop = 64.0;
  static const double kumiBarHeightDesktop = 56.0;

  // Fixed sizes (same across all sizes)
  static const double fabSize = 56.0;
  static const double toastHeight = 48.0;
  static const double noteCardMinHeight = 80.0;
  static const double touchTargetMin = 44.0;

  // Widths - Mobile (base)
  static const double contentMaxWidthMobile = double.infinity;

  // Widths - Tablet
  static const double contentMaxWidthTablet = 720.0;

  // Widths - Desktop
  static const double contentMaxWidthDesktop = 960.0;

  // Card widths
  static const double cardWidthMaxMobile = double.infinity;
  static const double cardWidthMaxTablet = 360.0;
  static const double cardWidthMaxDesktop = 400.0;

  /// Get top bar height based on screen width.
  static double topbarHeight(double screenWidth) {
    if (screenWidth >= 1024) return topbarHeightDesktop;
    if (screenWidth >= 768) return topbarHeightTablet;
    return topbarHeightMobile;
  }

  /// Get bottom tabs height based on screen width.
  static double bottomTabsHeight(double screenWidth) {
    if (screenWidth >= 1024) return 0; // Hidden on desktop
    if (screenWidth >= 768) return bottomTabsHeightTablet;
    return bottomTabsHeightMobile;
  }

  /// Get Kumi bar height based on screen width.
  static double kumiBarHeight(double screenWidth) {
    if (screenWidth >= 768) return kumiBarHeightTablet;
    return kumiBarHeightMobile;
  }

  /// Get content max width based on screen width.
  static double contentMaxWidth(double screenWidth) {
    if (screenWidth >= 1024) return contentMaxWidthDesktop;
    if (screenWidth >= 768) return contentMaxWidthTablet;
    return contentMaxWidthMobile;
  }

  /// Get card max width based on screen width.
  static double cardWidthMax(double screenWidth) {
    if (screenWidth >= 1024) return cardWidthMaxDesktop;
    if (screenWidth >= 768) return cardWidthMaxTablet;
    return cardWidthMaxMobile;
  }
}

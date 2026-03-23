import 'package:flutter/material.dart';

/// Kumi Note breakpoint tokens for responsive design.
///
/// Mobile-first approach with breakpoints for tablet and desktop.
class KumiBreakpoints {
  KumiBreakpoints._();

  /// Mobile breakpoint (0px+) - Smartphones base
  static const double mobile = 0.0;

  /// Tablet breakpoint (768px+) - Tablets
  static const double tablet = 768.0;

  /// Desktop breakpoint (1024px+) - Desktop
  static const double desktop = 1024.0;

  /// Check if screen width is mobile (< 768px)
  static bool isMobile(double width) => width < tablet;

  /// Check if screen width is tablet (768px - 1023px)
  static bool isTablet(double width) => width >= tablet && width < desktop;

  /// Check if screen width is desktop (1024px+)
  static bool isDesktop(double width) => width >= desktop;

  /// Get responsive value based on screen width
  static T responsive<T>({
    required double width,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (width >= KumiBreakpoints.desktop && desktop != null) return desktop;
    if (width >= KumiBreakpoints.tablet && tablet != null) return tablet;
    return mobile;
  }
}

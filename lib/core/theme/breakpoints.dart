class KumiBreakpoints {
  KumiBreakpoints._();

  static const double mobile = 0;
  static const double tablet = 768;
  static const double desktop = 1024;

  static bool isMobile(double width) => width < tablet;
  static bool isTablet(double width) => width >= tablet && width < desktop;
  static bool isDesktop(double width) => width >= desktop;

  static T responsive<T>({
    required double width,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (width >= KumiBreakpoints.desktop && desktop != null) {
      return desktop;
    }

    if (width >= KumiBreakpoints.tablet && tablet != null) {
      return tablet;
    }

    return mobile;
  }
}

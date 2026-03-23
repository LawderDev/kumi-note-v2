import 'package:kumi_note/core/theme/breakpoints.dart';

class KumiDimensions {
  KumiDimensions._();

  static const double topbarHeightMobile = 52;
  static const double bottomTabsHeightMobile = 52;
  static const double kumiBarHeightMobile = 52;
  static const double topbarHeightTablet = 64;
  static const double bottomTabsHeightTablet = 56;
  static const double kumiBarHeightTablet = 56;
  static const double topbarHeightDesktop = 64;
  static const double kumiBarHeightDesktop = 56;
  static const double fabSize = 56;
  static const double toastHeight = 48;
  static const double noteCardMinHeight = 80;
  static const double touchTargetMin = 44;
  static const double contentMaxWidthMobile = double.infinity;
  static const double contentMaxWidthTablet = 720;
  static const double contentMaxWidthDesktop = 960;
  static const double cardWidthMaxMobile = double.infinity;
  static const double cardWidthMaxTablet = 360;
  static const double cardWidthMaxDesktop = 400;

  static double topbarHeight(double screenWidth) {
    if (screenWidth >= KumiBreakpoints.desktop) {
      return topbarHeightDesktop;
    }
    if (screenWidth >= KumiBreakpoints.tablet) {
      return topbarHeightTablet;
    }
    return topbarHeightMobile;
  }

  static double bottomTabsHeight(double screenWidth) {
    if (screenWidth >= KumiBreakpoints.desktop) {
      return 0;
    }
    if (screenWidth >= KumiBreakpoints.tablet) {
      return bottomTabsHeightTablet;
    }
    return bottomTabsHeightMobile;
  }

  static double kumiBarHeight(double screenWidth) {
    if (screenWidth >= KumiBreakpoints.tablet) {
      return kumiBarHeightTablet;
    }
    return kumiBarHeightMobile;
  }

  static double contentMaxWidth(double screenWidth) {
    if (screenWidth >= KumiBreakpoints.desktop) {
      return contentMaxWidthDesktop;
    }
    if (screenWidth >= KumiBreakpoints.tablet) {
      return contentMaxWidthTablet;
    }
    return contentMaxWidthMobile;
  }

  static double cardWidthMax(double screenWidth) {
    if (screenWidth >= KumiBreakpoints.desktop) {
      return cardWidthMaxDesktop;
    }
    if (screenWidth >= KumiBreakpoints.tablet) {
      return cardWidthMaxTablet;
    }
    return cardWidthMaxMobile;
  }
}

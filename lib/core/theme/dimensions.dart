import 'package:flutter/material.dart';

class KumiDimensions {
  KumiDimensions._();

  static const double topbarHeightMobile = 52.0;
  static const double bottomTabsHeightMobile = 52.0;
  static const double kumiBarHeightMobile = 52.0;

  static const double topbarHeightTablet = 64.0;
  static const double bottomTabsHeightTablet = 56.0;
  static const double kumiBarHeightTablet = 56.0;

  static const double topbarHeightDesktop = 64.0;
  static const double kumiBarHeightDesktop = 56.0;

  static const double fabSize = 56.0;
  static const double toastHeight = 48.0;
  static const double noteCardMinHeight = 80.0;
  static const double touchTargetMin = 44.0;

  static const double contentMaxWidthMobile = double.infinity;
  static const double contentMaxWidthTablet = 720.0;
  static const double contentMaxWidthDesktop = 960.0;

  static const double cardWidthMaxMobile = double.infinity;
  static const double cardWidthMaxTablet = 360.0;
  static const double cardWidthMaxDesktop = 400.0;

  static double topbarHeight(double screenWidth) {
    if (screenWidth >= 1024) return topbarHeightDesktop;
    if (screenWidth >= 768) return topbarHeightTablet;
    return topbarHeightMobile;
  }

  static double bottomTabsHeight(double screenWidth) {
    if (screenWidth >= 1024) return 0;
    if (screenWidth >= 768) return bottomTabsHeightTablet;
    return bottomTabsHeightMobile;
  }

  static double kumiBarHeight(double screenWidth) {
    if (screenWidth >= 768) return kumiBarHeightTablet;
    return kumiBarHeightMobile;
  }

  static double contentMaxWidth(double screenWidth) {
    if (screenWidth >= 1024) return contentMaxWidthDesktop;
    if (screenWidth >= 768) return contentMaxWidthTablet;
    return contentMaxWidthMobile;
  }

  static double cardWidthMax(double screenWidth) {
    if (screenWidth >= 1024) return cardWidthMaxDesktop;
    if (screenWidth >= 768) return cardWidthMaxTablet;
    return cardWidthMaxMobile;
  }
}

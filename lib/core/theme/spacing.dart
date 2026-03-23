import 'package:flutter/material.dart';

class KumiSpacing {
  KumiSpacing._();

  static const double spaceXs = 4.0;
  static const double spaceSm = 8.0;
  static const double spaceMd = 12.0;
  static const double spaceLg = 16.0;
  static const double spaceXl = 24.0;
  static const double space2xl = 32.0;

  static EdgeInsets get paddingXs => EdgeInsets.all(spaceXs);
  static EdgeInsets get paddingSm => EdgeInsets.all(spaceSm);
  static EdgeInsets get paddingMd => EdgeInsets.all(spaceMd);
  static EdgeInsets get paddingLg => EdgeInsets.all(spaceLg);
  static EdgeInsets get paddingXl => EdgeInsets.all(spaceXl);
  static EdgeInsets get padding2xl => EdgeInsets.all(space2xl);

  static EdgeInsets get paddingHorizontalSm =>
      EdgeInsets.symmetric(horizontal: spaceSm);
  static EdgeInsets get paddingHorizontalMd =>
      EdgeInsets.symmetric(horizontal: spaceMd);
  static EdgeInsets get paddingHorizontalLg =>
      EdgeInsets.symmetric(horizontal: spaceLg);
  static EdgeInsets get paddingHorizontalXl =>
      EdgeInsets.symmetric(horizontal: spaceXl);

  static EdgeInsets get paddingVerticalSm =>
      EdgeInsets.symmetric(vertical: spaceSm);
  static EdgeInsets get paddingVerticalMd =>
      EdgeInsets.symmetric(vertical: spaceMd);
  static EdgeInsets get paddingVerticalLg =>
      EdgeInsets.symmetric(vertical: spaceLg);
  static EdgeInsets get paddingVerticalXl =>
      EdgeInsets.symmetric(vertical: spaceXl);
}

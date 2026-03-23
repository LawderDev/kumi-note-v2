import 'package:flutter/material.dart';

class KumiSpacing {
  KumiSpacing._();

  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 12;
  static const double spaceLg = 16;
  static const double spaceXl = 24;
  static const double space2xl = 32;
  static const EdgeInsets paddingXs = EdgeInsets.all(spaceXs);
  static const EdgeInsets paddingSm = EdgeInsets.all(spaceSm);
  static const EdgeInsets paddingMd = EdgeInsets.all(spaceMd);
  static const EdgeInsets paddingLg = EdgeInsets.all(spaceLg);
  static const EdgeInsets paddingXl = EdgeInsets.all(spaceXl);
  static const EdgeInsets padding2xl = EdgeInsets.all(space2xl);
  static const EdgeInsets paddingHorizontalSm = EdgeInsets.symmetric(
    horizontal: spaceSm,
  );
  static const EdgeInsets paddingHorizontalMd = EdgeInsets.symmetric(
    horizontal: spaceMd,
  );
  static const EdgeInsets paddingHorizontalLg = EdgeInsets.symmetric(
    horizontal: spaceLg,
  );
  static const EdgeInsets paddingHorizontalXl = EdgeInsets.symmetric(
    horizontal: spaceXl,
  );
  static const EdgeInsets paddingVerticalSm = EdgeInsets.symmetric(
    vertical: spaceSm,
  );
  static const EdgeInsets paddingVerticalMd = EdgeInsets.symmetric(
    vertical: spaceMd,
  );
  static const EdgeInsets paddingVerticalLg = EdgeInsets.symmetric(
    vertical: spaceLg,
  );
  static const EdgeInsets paddingVerticalXl = EdgeInsets.symmetric(
    vertical: spaceXl,
  );
  static const SizedBox sizedBoxXs = SizedBox(height: spaceXs, width: spaceXs);
  static const SizedBox sizedBoxSm = SizedBox(height: spaceSm, width: spaceSm);
  static const SizedBox sizedBoxMd = SizedBox(height: spaceMd, width: spaceMd);
  static const SizedBox sizedBoxLg = SizedBox(height: spaceLg, width: spaceLg);
  static const SizedBox sizedBoxXl = SizedBox(height: spaceXl, width: spaceXl);
  static const SizedBox sizedBox2xl = SizedBox(
    height: space2xl,
    width: space2xl,
  );
  static const SizedBox horizontalXs = SizedBox(width: spaceXs);
  static const SizedBox horizontalSm = SizedBox(width: spaceSm);
  static const SizedBox horizontalMd = SizedBox(width: spaceMd);
  static const SizedBox horizontalLg = SizedBox(width: spaceLg);
  static const SizedBox horizontalXl = SizedBox(width: spaceXl);
  static const SizedBox horizontal2xl = SizedBox(width: space2xl);
  static const SizedBox verticalXs = SizedBox(height: spaceXs);
  static const SizedBox verticalSm = SizedBox(height: spaceSm);
  static const SizedBox verticalMd = SizedBox(height: spaceMd);
  static const SizedBox verticalLg = SizedBox(height: spaceLg);
  static const SizedBox verticalXl = SizedBox(height: spaceXl);
  static const SizedBox vertical2xl = SizedBox(height: space2xl);
}

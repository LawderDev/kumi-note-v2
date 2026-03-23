import 'package:flutter/material.dart';

class KumiRadius {
  KumiRadius._();

  static const double radiusSm = 4;
  static const double radiusMd = 8;
  static const double radiusLg = 12;
  static const double radiusXl = 16;
  static const double radiusFull = 9999;
  static const BorderRadius borderSm = BorderRadius.all(
    Radius.circular(radiusSm),
  );
  static const BorderRadius borderMd = BorderRadius.all(
    Radius.circular(radiusMd),
  );
  static const BorderRadius borderLg = BorderRadius.all(
    Radius.circular(radiusLg),
  );
  static const BorderRadius borderXl = BorderRadius.all(
    Radius.circular(radiusXl),
  );
  static const BorderRadius borderFull = BorderRadius.all(
    Radius.circular(radiusFull),
  );
  static const BorderRadius borderTopLg = BorderRadius.vertical(
    top: Radius.circular(radiusLg),
  );
  static const BorderRadius borderTopXl = BorderRadius.vertical(
    top: Radius.circular(radiusXl),
  );
}

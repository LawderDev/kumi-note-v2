import 'package:flutter/material.dart';

class KumiAnimations {
  KumiAnimations._();

  static const Duration durationFast = Duration(milliseconds: 150);
  static const Duration durationNormal = Duration(milliseconds: 250);
  static const Duration durationSlow = Duration(milliseconds: 400);
  static const Duration durationToast = Duration(milliseconds: 3000);
  static const Duration durationToastAction = Duration(milliseconds: 5000);
  static const Curve easeDefault = Cubic(0.4, 0, 0.2, 1);
  static const Curve easeIn = Cubic(0.4, 0, 1, 1);
  static const Curve easeOut = Cubic(0, 0, 0.2, 1);
}

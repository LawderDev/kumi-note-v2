import 'package:flutter/material.dart';

class KumiShadows {
  KumiShadows._();

  static const List<BoxShadow> shadowSm = [
    BoxShadow(color: Color(0x0D000000), blurRadius: 2, offset: Offset(0, 1)),
  ];
  static const List<BoxShadow> shadowMd = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 6, offset: Offset(0, 4)),
  ];
  static const List<BoxShadow> shadowLg = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 15, offset: Offset(0, 10)),
  ];
  static BoxShadow get boxSm => shadowSm.first;
  static BoxShadow get boxMd => shadowMd.first;
  static BoxShadow get boxLg => shadowLg.first;
}

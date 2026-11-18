import 'package:flutter/animation.dart';

abstract final class NorvaMotion {
  static const Duration fast = Duration(milliseconds: 120);
  static const Duration base = Duration(milliseconds: 200);
  static const Duration slow = Duration(milliseconds: 320);

  static const Curve curve = Curves.easeInOut;
}
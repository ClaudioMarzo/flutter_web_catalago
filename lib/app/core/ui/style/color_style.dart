import 'package:flutter/material.dart';

class ColorStyle {
  static ColorStyle? _instance;

  ColorStyle._();

  static ColorStyle get i {
    _instance ??= ColorStyle._();
    return _instance!;
  }

  Color get white => const Color.fromRGBO(255, 255, 255, 1);
  Color get darkwhite => const Color.fromRGBO(240, 240, 245, 1);
  Color get blue => const Color.fromRGBO(63, 142, 189, 1);
  Color get gray => const Color.fromRGBO(104, 112, 118, 1);
  Color get black => const Color.fromRGBO(0, 41, 59, 1);
}

extension ColorsAppExtension on BuildContext {
  ColorStyle? get colors => ColorStyle.i;
}

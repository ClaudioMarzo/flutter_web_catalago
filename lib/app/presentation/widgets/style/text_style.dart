import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'Poppins';

  TextStyle get extLight => TextStyle(fontWeight: FontWeight.w300, fontFamily: font);

  TextStyle get textRegular => TextStyle(fontWeight: FontWeight.normal, fontFamily: font);

  TextStyle get textMedium => TextStyle(fontWeight: FontWeight.w600, fontFamily: font);

  TextStyle get textBold => TextStyle(fontWeight: FontWeight.bold, fontFamily: font);

  TextStyle get textExtraBold => TextStyle(fontWeight: FontWeight.w900, fontFamily: font);

  TextStyle get textButtonLabel => textMedium.copyWith(fontSize: 16);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}

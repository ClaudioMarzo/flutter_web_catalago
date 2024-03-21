import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles? get i {
    _instance ??= AppStyles._();
    return _instance;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: ColorStyle.i.blue,
        textStyle: TextStyles.i.textButtonLabel,
      );
}

extension AppStyleExtension on BuildContext {
  AppStyles? get appStyles => AppStyles.i;
}

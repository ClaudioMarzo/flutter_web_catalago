import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/app_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide.none,
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: ColorStyle.i.darkwhite,
    // appBarTheme: AppBarTheme(
    //   backgroundColor: ColorStyle.i.darkwhite,
    //   elevation: 0,
    //   centerTitle: true,
    //   iconTheme: IconThemeData(color: ColorStyle.i.white),
    // ),
    primaryColor: ColorStyle.i.darkwhite,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorStyle.i.white,
      primary: ColorStyle.i.white,
      secondary: ColorStyle.i.darkwhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.i?.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: ColorStyle.i.darkwhite,
      fillColor: ColorStyle.i.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(10),
      border: _defaultInputBorder,
      // enabledBorder: _defaultInputBorder,
      // focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.i.textRegular.copyWith(color: ColorStyle.i.black, fontSize: 14),
      errorStyle: TextStyles.i.textRegular.copyWith(color: Colors.red),
    ),
  );
}

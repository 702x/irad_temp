import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData.light();
  static ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: ColorConstants.darkBlack,
      textTheme: TextTheme().copyWith(
        headline1: _h12,
        headline2: _h14,
        headline3: _h15,
        headline4: _h17,
        headline5: _h22,
      ));

  static TextStyle _h12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorConstants.white,
  );

  static TextStyle _h14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorConstants.white,
  );

  static TextStyle _h15 = TextStyle(
    color: ColorConstants.white,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  static TextStyle _h17 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: ColorConstants.white,
  );
  static TextStyle _h22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: ColorConstants.white,
  );
}

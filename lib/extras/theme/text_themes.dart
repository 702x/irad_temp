import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme _textTheme;
  TextThemes(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
  }
  static TextStyle h12 = _textTheme.headline1;
  static TextStyle h14 = _textTheme.headline2;
  static TextStyle h15 = _textTheme.headline3;
  static TextStyle h17 = _textTheme.headline4;
  static TextStyle h22 = _textTheme.headline5;
}

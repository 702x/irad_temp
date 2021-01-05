import 'package:flutter/cupertino.dart';
import 'package:irad/extras/dimensions.dart';

class UiHelper {
  UiHelper._();
  static Widget horizontalPadidng({Widget child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.boxWidth * 5),
        child: child,
      );
  static Widget allPadding({Widget child}) => Padding(
        padding: EdgeInsets.all(Dimensions.boxWidth * 5),
        child: child,
      );

  static Widget h12({Widget child}) => SizedBox(
        width: double.infinity,
        height: Dimensions.boxHeight * 12,
      );

  static Widget h8({Widget child}) => SizedBox(
        height: Dimensions.boxHeight * 8,
      );
  static Widget h4({Widget child}) => SizedBox(
        height: Dimensions.boxHeight * 4,
      );
  static Widget h2({Widget child}) => SizedBox(
        height: Dimensions.boxHeight * 2,
      );
  static Widget w2({Widget child}) => SizedBox(
        width: Dimensions.boxHeight * 2,
      );
  static Widget bottomButtonAlign({Widget child}) => Align(
        child: child,
        alignment: Alignment(0, 0.95),
      );
}

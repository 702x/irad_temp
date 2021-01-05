import 'package:flutter/material.dart';
import 'package:irad/extras/constants/image_constants.dart';

class CustomAppLogo extends StatelessWidget {
  final bool isSmall;

  const CustomAppLogo({this.isSmall = true});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConstants.logo,
      height: isSmall ? 51.79 : 81.82,
      width: isSmall ? 153.77 : 242.89,
    );
  }
}

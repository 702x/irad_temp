import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/theme/text_themes.dart';

class CustomYellowTextButton extends StatelessWidget {
  final Function onTap;
  final String label;
  final bool isOutlined;
  const CustomYellowTextButton({this.onTap, this.label, this.isOutlined});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 20),
      minWidth: double.maxFinite,
      color: ColorConstants.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: onTap,
      child: Text(
        label ?? "",
        style: TextThemes.h17.copyWith(
          color: ColorConstants.black,
        ),
      ),
    );
    // return FlatButton(
    //   onPressed: onTap,
    //   child: Container(
    //     width: double.infinity,
    //     decoration: BoxDecoration(
    //       color: ColorConstants.yellow,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     padding: EdgeInsets.symmetric(vertical: 20),
    //     child: Center(
    //       child: Text(
    //         label ?? "",
    //         style: TextThemes.h17.copyWith(
    //           color: ColorConstants.black,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

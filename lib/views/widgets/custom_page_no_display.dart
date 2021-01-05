import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/theme/text_themes.dart';

class CustomPageNoDisplay extends StatelessWidget {
  final int pageNo;
  CustomPageNoDisplay(this.pageNo);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 21,
          backgroundColor: ColorConstants.yellow,
          child: Text(
            "1",
            style: TextThemes.h17.copyWith(
              color: ColorConstants.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: 33,
          height: 6,
          color: pageNo == 2 ? ColorConstants.yellow : ColorConstants.grey,
        ),
        CircleAvatar(
          radius: 21,
          backgroundColor:
              pageNo == 2 ? ColorConstants.yellow : ColorConstants.grey,
          child: Text(
            "2",
            style: TextThemes.h17.copyWith(
              color: ColorConstants.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

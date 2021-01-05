import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/image_constants.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

class AccidentRegisterScreen extends StatelessWidget {
  static const String id = "AccidentRegisterScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) => Column(
          children: [
            _CustomAccidentRegisterTiles(
              heading: "General Information",
              subHeading: "Pending",
            ),
            _CustomAccidentRegisterTiles(
              heading: "Vehicle",
              subHeading: "Pending 1 of 1",
            ),
            _CustomAccidentRegisterTiles(
              heading: "Passenger",
              subHeading: "No passenger",
            ),
            _CustomAccidentRegisterTiles(
              heading: "Padestrian",
              subHeading: "No padestrian",
            ),
            _CustomAccidentRegisterTiles(
              isUploadIcon: true,
              heading: "Image / Video",
              subHeading: "Uploda",
            ),
            CustomYellowTextButton(
              onTap: () {},
              label: "VIEW ENTERED DETAILS",
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAccidentRegisterTiles extends StatelessWidget {
  final String heading;
  final String subHeading;
  final bool isUploadIcon;
  const _CustomAccidentRegisterTiles(
      {this.heading, this.subHeading, this.isUploadIcon = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 83,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorConstants.grey,
      ),
      child: UiHelper.horizontalPadidng(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  heading ?? "",
                  style: TextThemes.h17.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subHeading ?? "",
                  style: TextThemes.h14,
                ),
              ],
            ),
            !isUploadIcon
                ? Icon(Icons.arrow_forward_ios)
                : Image.asset(
                    ImageConstants.uploadIcon,
                    width: 29,
                    height: 29,
                  ),
          ],
        ),
      ),
    );
  }
}

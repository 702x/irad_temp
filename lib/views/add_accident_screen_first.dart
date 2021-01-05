import 'package:flutter/material.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/views/add_accident_screen_second.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_text_form_field.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';
import 'widgets/custom_page_no_display.dart';
import 'widgets/custom_safe_area.dart';

class AddAccidentScreenFirst extends StatelessWidget {
  static const String id = "AddAccidentScreenFirst";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: CustomSafeArea(
        builder: (context) => UiHelper.horizontalPadidng(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  title: "Add Acccident",
                  appBarType: AppBarType.AppBarWithBack,
                ),
                CustomPageNoDisplay(1),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.accidentDateAndTime,
                ),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.reportingDateAndTime,
                ),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.location,
                ),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.landmarkName,
                ),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.severity,
                ),
                UiHelper.h2(),
                CustomTextFormField(
                  label: StringConstants.noOfVehicles,
                ),
                UiHelper.h2(),
                CustomYellowTextButton(
                  onTap: () {},
                  label: "Akkk",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/home_screen.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_text_form_field.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

import 'widgets/custom_app_logo.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomSafeArea(
        builder: (context) => UiHelper.horizontalPadidng(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: Dimensions.boxHeight * 12,
              ),
              CustomAppLogo(),
              UiHelper.h8(),
              Text(
                "Login",
                style: TextThemes.h22,
              ),
              UiHelper.h8(),
              CustomTextFormField(
                hintText: StringConstants.userName,
              ),
              UiHelper.h2(),
              CustomTextFormField(
                hintText: StringConstants.passWord,
              ),
              Spacer(),
              CustomYellowTextButton(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.id, (route) => false);
                },
                label: StringConstants.login,
              ),
              UiHelper.h4(),
            ],
          ),
        ),
      ),
    );
  }
}

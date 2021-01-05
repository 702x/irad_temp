import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/image_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/login_screen.dart';
import 'package:irad/views/widgets/custom_app_logo.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_text_form_field.dart';

class LoginAsScreen extends StatelessWidget {
  static const String id = "LoginAsScreen";
  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomSafeArea(
        builder: (context) => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UiHelper.h12(),
              CustomAppLogo(),
              UiHelper.h8(),
              Text(
                "Login as",
                style: TextThemes.h22,
              ),
              UiHelper.h2(),
              UiHelper.horizontalPadidng(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _IconTextTile(
                          image: ImageConstants.police,
                          title: "POLICE",
                        ),
                        UiHelper.w2(),
                        _IconTextTile(
                          image: ImageConstants.truck,
                          title: "TRANSPORT",
                        ),
                      ],
                    ),
                    UiHelper.h2(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _IconTextTile(
                          image: ImageConstants.road,
                          title: "HIGHWAY",
                        ),
                        UiHelper.w2(),
                        _IconTextTile(
                          image: ImageConstants.healthCareHands,
                          title: "HEALTH",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UiHelper.h8(),
              UiHelper.horizontalPadidng(
                child: CustomTextFormField(
                  dropDownMenuItemList: ["English", "Hindi"],
                  isDropDown: true,
                  hintText: "Hiii",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconTextTile extends StatelessWidget {
  final String image;
  final String title;

  const _IconTextTile({this.image, this.title});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: ColorConstants.yellow,
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, LoginScreen.id);
      },
      color: ColorConstants.grey,
      shape: RoundedRectangleBorder(
          side: BorderSide.none, borderRadius: BorderRadius.circular(21)),
      child: SizedBox(
        height: Dimensions.boxHeight * 20,
        width: Dimensions.boxWidth * 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 46.64,
              width: 46.64,
              color: ColorConstants.yellow,
            ),
            SizedBox(
              height: Dimensions.boxHeight * 2,
            ),
            Text(
              this.title ?? "",
              style: TextThemes.h14.copyWith(
                color: ColorConstants.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

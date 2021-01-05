import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/image_constants.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/theme/text_themes.dart';

enum AppBarType { AppBarWithFilter, AppBarWithBack }

class CustomAppBar extends StatelessWidget {
  final String title;
  final AppBarType appBarType;

  CustomAppBar({
    this.title,
    this.appBarType = AppBarType.AppBarWithFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.boxHeight * 2,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if (appBarType == AppBarType.AppBarWithFilter) {
                //open drawer
              } else {
                Navigator.pop(context);
              }
            },
            child: appBarType == AppBarType.AppBarWithFilter
                ? Image.asset(
                    ImageConstants.hamBurgerMenuIcon,
                    height: 40,
                    width: 40,
                  )
                : Image.asset(
                    ImageConstants.backButton,
                    height: 40,
                    width: 40,
                  ),
          ),
          SizedBox(
            width: Dimensions.boxWidth * 2,
          ),
          Text(
            title ?? StringConstants.home,
            style: TextThemes.h22,
          ),
          Spacer(),
          appBarType == AppBarType.AppBarWithFilter
              ? IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  onPressed: () {},
                )
              : SizedBox(),
          SizedBox(
            width: Dimensions.boxWidth * 2,
          ),
          _CustomNotificationIcon()
        ],
      ),
    );
  }
}

class _CustomNotificationIcon extends StatelessWidget {
  final bool isNotification;

  const _CustomNotificationIcon({this.isNotification = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isNotification
            ? Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 26,
              )
            : SizedBox(),
        Positioned(
          top: 4,
          right: 3,
          child: Icon(
            Icons.brightness_1,
            size: 10,
            color: ColorConstants.yellow,
          ),
        )
      ],
    );
  }
}

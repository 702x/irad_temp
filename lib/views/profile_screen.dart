import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = "ProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) {
          return Column(
            children: [
              CustomAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://images.alphacoders.com/669/thumb-350-669164.jpg",
                          height: 117,
                          width: 117,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Arjun Kapoor",
                        style: TextThemes.h17,
                      ),
                      Text(
                        "Police Demo",
                        style: TextThemes.h14,
                      ),
                      _ProfileScreenList(
                        keys: "Department",
                        value: "Police",
                      ),
                      _ProfileScreenList(
                        keys: "Role",
                        value: "Field Officer",
                      ),
                      _ProfileScreenList(
                        keys: "Police Station",
                        value: "Papanasam-(25)",
                      ),
                      _ProfileScreenList(
                        keys: "District",
                        value: "Thanjavur-(602)",
                      ),
                      _ProfileScreenList(
                        keys: "State",
                        value: "Tamilnadu",
                      ),
                      _ProfileScreenList(
                        keys: "Status",
                        value: "Active",
                      ),
                      CustomYellowTextButton(
                        label: "CHANGE PASSWORD",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ProfileScreenList extends StatelessWidget {
  final String keys;
  final String value;

  const _ProfileScreenList({this.keys, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 52,
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keys ?? "",
            style: TextThemes.h14,
          ),
          Text(
            value ?? "",
            style: TextThemes.h15,
          )
        ],
      ),
    );
  }
}

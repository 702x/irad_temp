import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';

class FeedBackScreen extends StatelessWidget {
  static const String id = "feedbackScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) => Column(
          children: [
            CustomAppBar(),
            Container(
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: ColorConstants.grey,
              ),
              child: Column(
                children: [
                  Text("Lorem ipsum"),
                  Text("Sir i am Mohan from tirpura i hahve "),
                  Text("")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';

class ShareFeedbackSCreen extends StatelessWidget {
  static const String id = "ShareFeedBackScreem";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) {
          return Container(
            color: ColorConstants.grey,
            height: 287,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}

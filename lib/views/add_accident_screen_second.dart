import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/home_screen.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_page_no_display.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

class AddAccidentScreenSecond extends StatelessWidget {
  static const String id = "AddAccidentScreenSecond";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) => Stack(
          children: [
            UiHelper.horizontalPadidng(
              child: Column(
                children: [
                  CustomAppBar(),
                  CustomPageNoDisplay(2),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics()),
                      child: Column(
                        children: [
                          _InjuredDeathContainer(
                            label: StringConstants.driver,
                            getDeathCount: (val) {},
                            getInjuredCount: (val) {},
                          ),
                          _InjuredDeathContainer(
                            label: StringConstants.passenger,
                            getDeathCount: (val) {},
                            getInjuredCount: (val) {},
                          ),
                          _InjuredDeathContainer(
                            label: StringConstants.padestrian,
                            getDeathCount: (val) {},
                            getInjuredCount: (val) {},
                          ),
                          _InjuredDeathContainer(
                            label: StringConstants.animal,
                            getDeathCount: (val) {},
                            getInjuredCount: (val) {},
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UiHelper.bottomButtonAlign(
              child: UiHelper.horizontalPadidng(
                child: Row(
                  children: [
                    Flexible(
                      child: CustomYellowTextButton(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.id, (route) => false);
                        },
                        label: StringConstants.discard,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.boxWidth * 4,
                    ),
                    Flexible(
                      child: CustomYellowTextButton(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.id, (route) => false);
                        },
                        label: StringConstants.save,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _InjuredDeathContainer extends StatefulWidget {
  final String label;
  final Function(int) getInjuredCount;
  final Function(int) getDeathCount;

  const _InjuredDeathContainer(
      {this.label, this.getInjuredCount, this.getDeathCount});
  @override
  __InjuredDeathContainerState createState() => __InjuredDeathContainerState();
}

class __InjuredDeathContainerState extends State<_InjuredDeathContainer> {
  int injuredCount = 0;
  int deathCount = 0;

  @override
  void initState() {
    widget.getDeathCount(deathCount);
    widget.getInjuredCount(injuredCount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Align(
              alignment: Alignment(-0.95, 0),
              child: Text(
                "Label",
                style: TextThemes.h14,
              )),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorConstants.grey,
            ),
            height: 132,
            child: UiHelper.horizontalPadidng(
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        StringConstants.injured,
                        style: TextThemes.h17,
                      ),
                      Spacer(),
                      Container(
                        width: 96,
                        height: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: ColorConstants.black,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      injuredCount = injuredCount > 0
                                          ? --injuredCount
                                          : injuredCount;
                                      widget.getInjuredCount(injuredCount);
                                    });
                                  },
                                  child: Center(child: Icon(Icons.remove))),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  injuredCount.toString(),
                                  style: TextThemes.h17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      injuredCount = ++injuredCount;
                                      widget.getInjuredCount(injuredCount);
                                    });
                                  },
                                  child: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        StringConstants.deaths,
                        style: TextThemes.h17,
                      ),
                      Spacer(),
                      Container(
                        width: 96,
                        height: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: ColorConstants.black,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      deathCount = deathCount > 0
                                          ? --deathCount
                                          : deathCount;
                                      widget.getDeathCount(deathCount);
                                    });
                                  },
                                  child: Center(child: Icon(Icons.remove))),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  deathCount.toString(),
                                  style: TextThemes.h17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      deathCount = ++deathCount;
                                      widget.getDeathCount(deathCount);
                                    });
                                  },
                                  child: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

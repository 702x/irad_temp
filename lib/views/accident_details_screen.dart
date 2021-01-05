import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

class AccidentDetailsScreen extends StatelessWidget {
  static const String id = "AccidentDetailsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) {
          return UiHelper.horizontalPadidng(
            child: Stack(
              children: [
                Column(
                  children: [
                    CustomAppBar(),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(
                            parent: BouncingScrollPhysics()),
                        child: Column(
                          children: [
                            Container(
                              height: 287,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: ColorConstants.lightBlack,
                              ),
                              child: UiHelper.allPadding(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                            heading: "Fir/ CSR Number",
                                            subHeading: "123456"),
                                        _headingSubHeading(
                                            heading: "Accident ID",
                                            subHeading: "2564789563312"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                            heading: "Investigating officer",
                                            subHeading: "Arjun kapoor"),
                                        _headingSubHeading(
                                            heading: "Accident Date & Time",
                                            subHeading:
                                                "29 Dec, 2020 , 12:32 pm"),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Reporting Date & time",
                                          subHeading: "30 Dec 2020, 12 :32 pm",
                                        ),
                                        _headingSubHeading(
                                          heading: "Location",
                                          subHeading:
                                              "Lat: 12:256850 Lon: 25:2562266",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            UiHelper.h2(),
                            Container(
                              height: 618,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: ColorConstants.lightBlack,
                              ),
                              child: UiHelper.allPadding(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                            heading: "Landmark Name",
                                            subHeading: "xyz"),
                                        _headingSubHeading(
                                            heading: "Severity",
                                            subHeading: "Fatal"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                            heading: "No Of Vehicles(s)",
                                            subHeading: "1"),
                                        _headingSubHeading(
                                            heading: "Passengers",
                                            subHeading: "1"),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Deaths",
                                          subHeading: "0",
                                        ),
                                        _headingSubHeading(
                                          heading: "Injured",
                                          subHeading: "3",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Animal",
                                          subHeading: "0",
                                        ),
                                        _headingSubHeading(
                                          heading: "Local Body",
                                          subHeading: "3",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Collision Type",
                                          subHeading: "Corporation",
                                        ),
                                        _headingSubHeading(
                                          heading: "Collision Nature",
                                          subHeading: "Hit Tree",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading:
                                              "Initial Observation of accident scene",
                                          subHeading: "0",
                                        ),
                                        _headingSubHeading(
                                          heading: "Weather Condition",
                                          subHeading: "Fine",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Light Condition",
                                          subHeading: "Day",
                                        ),
                                        _headingSubHeading(
                                          heading: "Accident Spot",
                                          subHeading: "Open",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _headingSubHeading(
                                          heading: "Visibility",
                                          subHeading: "15 Meters",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            UiHelper.h2(),
                            _AccidentDetailTiles(
                              heading: "Vehicle / Driver / Passenger Details",
                              subHeading: "1",
                            ),
                            UiHelper.h2(),
                            _AccidentDetailTiles(
                              heading: "Transport Details",
                              subHeading: "1",
                            ),
                            UiHelper.h2(),
                            _AccidentDetailTiles(
                              heading: "Passenger Details",
                              subHeading: "1",
                            ),
                            UiHelper.h2(),
                            _AccidentDetailTiles(
                              heading: "Road Details",
                              subHeading: "1",
                            ),
                            UiHelper.h2(),
                            _AccidentDetailTiles(
                              heading: "Image & Video Details",
                              subHeading: "1",
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
                UiHelper.bottomButtonAlign(
                  child: CustomYellowTextButton(
                    label: "ACCIDENT REPORT",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _headingSubHeading({String heading, String subHeading}) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextThemes.h14.copyWith(color: ColorConstants.textWhite50),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            subHeading,
            style: TextThemes.h15,
          ),
        ],
      ),
    );
  }
}

class _AccidentDetailTiles extends StatelessWidget {
  final String heading;
  final String subHeading;

  const _AccidentDetailTiles({this.heading, this.subHeading});
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
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.textWhite50,
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
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

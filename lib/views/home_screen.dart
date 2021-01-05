import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/image_constants.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/accident_details_screen.dart';
import 'package:irad/views/accident_register_screen.dart';
import 'package:irad/views/add_accident_screen_first.dart';
import 'package:irad/views/filter_screen.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'widgets/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        builder: (context) => Stack(
          children: [
            Column(
              children: [
                UiHelper.horizontalPadidng(child: CustomAppBar()),
                UiHelper.horizontalPadidng(
                    child: _CustomFilterOptions(
                  pageController: _pageController,
                  getIndex: (val) {
                    _pageController.jumpToPage(
                      val,
                    );
                  },
                )),
                SizedBox(
                  height: Dimensions.boxHeight * 2,
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      UiHelper.horizontalPadidng(
                        child: ListView.builder(
                          physics: AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return _ListItem(
                              detailFunc: () {
                                Navigator.pushNamed(
                                    context, AccidentDetailsScreen.id);
                              },
                              accidentId: "0000",
                              address: "Near GAIL Building",
                              date: "29-Dec-2020",
                              time: "10:00 AM",
                              totalDeaths: 1,
                              totalInjured: 2,
                              totalVehicles: 5,
                            );
                          },
                        ),
                      ),
                      ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(
                            parent: BouncingScrollPhysics()),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return UiHelper.horizontalPadidng(
                            child: _ListItem(
                              accidentId: "1111",
                              address: "Near GAIL Building",
                              date: "29-Dec-2020",
                              time: "10:00 AM",
                              totalDeaths: 1,
                              totalInjured: 2,
                              totalVehicles: 5,
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(
                            parent: BouncingScrollPhysics()),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return UiHelper.horizontalPadidng(
                            child: _ListItem(
                              accidentId: "2222",
                              address: "Near GAIL Building",
                              date: "29-Dec-2020",
                              time: "10:00 AM",
                              totalDeaths: 1,
                              totalInjured: 2,
                              totalVehicles: 5,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            UiHelper.bottomButtonAlign(
              child: UiHelper.horizontalPadidng(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: ColorConstants.yellow,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    children: [
                      _YellowButton(
                        onPressed: () {
                          launch("tel://100");
                        },
                        image: ImageConstants.diallerConstant,
                        label: StringConstants.dialler,
                      ),
                      Container(
                        color: ColorConstants.darkBlack,
                        width: 1,
                        height: 70,
                      ),
                      _YellowButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AddAccidentScreenFirst.id);
                        },
                        image: ImageConstants.add,
                        label: StringConstants.add,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _YellowButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final String image;
  const _YellowButton({
    this.label,
    this.onPressed,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 18,
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextThemes.h17.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorConstants.darkBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final Function attachFileFun;
  final Function detailFunc;
  final String accidentId;
  final String address;
  final String date;
  final String time;
  final int totalVehicles;
  final int totalDeaths;
  final int totalInjured;
  const _ListItem(
      {this.accidentId,
      this.address,
      this.date,
      this.time,
      this.totalVehicles,
      this.totalDeaths,
      this.totalInjured,
      this.attachFileFun,
      this.detailFunc});

  Widget _customChips({String label, int count}) {
    return count == null || count == 0
        ? SizedBox()
        : Container(
            margin: EdgeInsets.only(right: 8),
            alignment: Alignment(0, 0),
            height: 25,
            width: 76,
            child: Text(
              "$count $label",
              style: TextThemes.h12.copyWith(
                fontWeight: FontWeight.w300,
                color: ColorConstants.yellow,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: ColorConstants.yellow,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorConstants.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${StringConstants.accidentId}: $accidentId",
                  style: TextThemes.h15.copyWith(
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.textWhite70,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "$address,On $date:",
                  style: TextThemes.h15.copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorConstants.white,
                  ),
                ),
                Text(
                  "$time",
                  style: TextThemes.h15.copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorConstants.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    _customChips(
                        label: StringConstants.vehicles, count: totalVehicles),
                    _customChips(
                        label: StringConstants.deaths, count: totalDeaths),
                    _customChips(
                        label: StringConstants.injured, count: totalInjured)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: attachFileFun,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1,
                            color: ColorConstants.darkBlack,
                          ),
                          top: BorderSide(
                            width: 1,
                            color: ColorConstants.darkBlack,
                          ),
                        ),
                      ),
                      child: Text(
                        StringConstants.attachFile,
                        style: TextThemes.h12.copyWith(
                          color: ColorConstants.yellow,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: detailFunc,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: ColorConstants.darkBlack,
                          ),
                        ),
                      ),
                      child: Text(
                        StringConstants.detail,
                        style: TextThemes.h12.copyWith(
                          color: ColorConstants.yellow,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomFilterOptions extends StatefulWidget {
  final Function(int) getIndex;
  final PageController pageController;
  const _CustomFilterOptions({this.getIndex, this.pageController});
  @override
  __CustomFilterOptionsState createState() => __CustomFilterOptionsState();
}

class __CustomFilterOptionsState extends State<_CustomFilterOptions> {
  int selectedIndex = 0;
  @override
  void initState() {
    widget.pageController.addListener(() {
      print(widget.pageController.page.round());
      setState(() {
        selectedIndex = widget.pageController.page.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorConstants.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: Dimensions.boxWidth * 2,
          ),
          _columnLabel(
            ontap: () {
              selectedIndex = 0;
              widget.getIndex(0);
              setState(() {});
            },
            isSelected: selectedIndex == 0 ? true : false,
            label: StringConstants.pending,
          ),
          _columnLabel(
            ontap: () {
              selectedIndex = 1;
              widget.getIndex(1);
              setState(() {});
            },
            isSelected: selectedIndex == 1 ? true : false,
            label: StringConstants.completed,
          ),
          _columnLabel(
            ontap: () {
              selectedIndex = 2;
              widget.getIndex(2);
              setState(() {});
            },
            isSelected: selectedIndex == 2 ? true : false,
            label: StringConstants.deleted,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FilterScreen.id);
            },
            child: Container(
              height: 58,
              width: 58,
              alignment: Alignment(0, 0),
              decoration: BoxDecoration(
                color: ColorConstants.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                ImageConstants.filterIcon,
                width: 18,
                height: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector _columnLabel(
      {String label, int quantity, bool isSelected = true, Function ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 7,
          ),
          Spacer(),
          Text(
            isSelected ? "$label (${quantity ?? 0})" : "$label",
            style: TextThemes.h12.copyWith(
              color: isSelected
                  ? ColorConstants.yellow
                  : ColorConstants.textWhite70,
            ),
          ),
          Spacer(),
          Container(
            height: 7,
            width: 45,
            decoration: BoxDecoration(
              color: isSelected ? ColorConstants.yellow : Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

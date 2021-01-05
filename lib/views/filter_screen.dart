import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/string_constants.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/helper/ui_helper.dart';
import 'package:irad/extras/theme/text_themes.dart';
import 'package:irad/views/widgets/custom_app_bar.dart';
import 'package:irad/views/widgets/custom_safe_area.dart';
import 'package:irad/views/widgets/custom_text_form_field.dart';
import 'package:irad/views/widgets/custom_yellow_text_button.dart';

class FilterScreen extends StatefulWidget {
  static const String id = "FilterScreen";
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int groupValue = 0;
  TextEditingController _fromController;
  TextEditingController _toController;

  @override
  void initState() {
    _fromController = TextEditingController();
    _toController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomSafeArea(
        builder: (context) {
          return UiHelper.horizontalPadidng(
            child: Column(
              children: [
                CustomAppBar(
                  appBarType: AppBarType.AppBarWithBack,
                  title: "Filter",
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      UiHelper.h2(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Dimensions.boxWidth * 42,
                            child: GestureDetector(
                              onTap: () async {
                                DateTime dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate:
                                        DateTime.now().add(Duration(days: 60)));
                                _fromController.text =
                                    dateTime == null ? "" : dateTime.toString();
                              },
                              child: AbsorbPointer(
                                child: CustomTextFormField(
                                  textEditingController: _fromController,
                                  label: "From",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.boxWidth * 42,
                            child: GestureDetector(
                              onTap: () async {
                                DateTime dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate:
                                        DateTime.now().add(Duration(days: 60)));
                                _fromController.text =
                                    dateTime == null ? "" : dateTime.toString();
                              },
                              child: AbsorbPointer(
                                child: CustomTextFormField(
                                  textEditingController: _toController,
                                  label: "To",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      UiHelper.h4(),
                      _radioItems(label: "Pending", value: 0),
                      _radioItems(label: "Complete", value: 1),
                      _radioItems(label: "Delete", value: 2),
                      _radioItems(label: "Local Disk", value: 3),
                      _radioItems(label: "Death", value: 4),
                      _radioItems(label: "Injured", value: 5),
                      UiHelper.h8(),
                      CustomYellowTextButton(
                        onTap: () {},
                        label: StringConstants.filter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _radioItems({String label, int value}) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: ColorConstants.grey,
        width: 2,
      ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextThemes.h17,
          ),
          Radio(
            activeColor: ColorConstants.yellow,
            value: value,
            groupValue: groupValue,
            onChanged: (val) {
              setState(() {
                groupValue = val;
              });
            },
          ),
        ],
      ),
    );
  }
}

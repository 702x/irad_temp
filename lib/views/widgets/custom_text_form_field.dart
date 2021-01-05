import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/theme/text_themes.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final Function(String) onChange;
  final Function validator;
  final TextEditingController textEditingController;
  final bool isDropDown;
  final bool isSmall;
  final String label;
  final int totalLines;
  final List<String> dropDownMenuItemList;

  const CustomTextFormField(
      {this.onChange,
      this.validator,
      this.textEditingController,
      this.hintText,
      this.isSmall = true,
      this.isDropDown = false,
      this.dropDownMenuItemList,
      this.label,
      this.totalLines});

  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String _chosenValue;
  @override
  void initState() {
    if (widget.dropDownMenuItemList != null)
      _chosenValue = widget.dropDownMenuItemList.first;
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.label == null
              ? SizedBox()
              : Align(
                  alignment: Alignment(-0.95, 0),
                  child: Text(
                    widget.label,
                    style: TextStyle(color: ColorConstants.textWhite70),
                  ),
                ),
          SizedBox(
            height: widget.label == null ? 0 : 2,
          ),
          widget.isDropDown
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.lightBlack),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: DropdownButton(
                        style: TextThemes.h14
                            .copyWith(color: ColorConstants.yellow),
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down),
                        underline: SizedBox(),
                        value: _chosenValue,
                        iconDisabledColor: ColorConstants.yellow,
                        iconEnabledColor: ColorConstants.yellow,
                        items: widget.dropDownMenuItemList
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _chosenValue = value;
                            print(_chosenValue);
                          });
                        }),
                  ),
                )
              : TextFormField(
                  maxLines: widget.totalLines ?? 1,
                  controller: widget.textEditingController,
                  onChanged: (value) {
                    widget.onChange(value);
                  },
                  validator: widget.validator,
                  decoration: InputDecoration(
                    contentPadding: widget.isSmall
                        ? EdgeInsets.symmetric(vertical: 10, horizontal: 20)
                        : null,
                    filled: true,
                    fillColor: ColorConstants.lightBlack,
                    hintText: widget.hintText ?? "",
                    hintStyle: TextStyle(color: ColorConstants.textWhite70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

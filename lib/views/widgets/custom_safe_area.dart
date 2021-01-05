import 'package:flutter/widgets.dart';
import 'package:irad/extras/dimensions.dart';
import 'package:irad/extras/theme/text_themes.dart';

typedef ResponsiveSafeArea = Widget Function(BuildContext context);

class CustomSafeArea extends StatefulWidget {
  final ResponsiveSafeArea _responsiveSafeArea;
  CustomSafeArea({@required ResponsiveSafeArea builder})
      : _responsiveSafeArea = builder;

  @override
  _CustomSafeAreaState createState() => _CustomSafeAreaState();
}

class _CustomSafeAreaState extends State<CustomSafeArea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          Dimensions.boxHeight = constraints.biggest.height / 100;
          Dimensions.boxWidth = constraints.biggest.width / 100;
          TextThemes(context);
          return widget._responsiveSafeArea(context);
        },
      ),
    );
  }
}

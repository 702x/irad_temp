import 'package:flutter/material.dart';
import 'package:irad/extras/theme/app_theme.dart';
import 'package:irad/views/add_accident_screen_first.dart';
import 'package:irad/views/profile_screen.dart';
import 'extras/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      // home: AccidentDetailsScreen(),
      home: AddAccidentScreenFirst(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irad/views/accident_details_screen.dart';
import 'package:irad/views/accident_register_screen.dart';
import 'package:irad/views/add_accident_screen_first.dart';
import 'package:irad/views/add_accident_screen_second.dart';
import 'package:irad/views/feedback_screen.dart';
import 'package:irad/views/filter_screen.dart';
import 'package:irad/views/home_screen.dart';
import 'package:irad/views/login_as_screen.dart';
import 'package:irad/views/login_screen.dart';
import 'package:irad/views/profile_screen.dart';
import 'package:irad/views/share_feedback_screen.dart';

class Routes {
  Routes._();
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final arg = routeSettings.arguments;
    switch (routeSettings.name) {
      case LoginAsScreen.id:
        return MaterialPageRoute(
          builder: (context) => LoginAsScreen(),
        );
      case LoginScreen.id:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case HomeScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );
      case ProfileScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return ProfileScreen();
          },
        );
      case ShareFeedbackSCreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return ShareFeedbackSCreen();
          },
        );
      case FilterScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return FilterScreen();
          },
        );
      case FeedBackScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return FeedBackScreen();
          },
        );
      case AddAccidentScreenSecond.id:
        return MaterialPageRoute(
          builder: (context) {
            return AddAccidentScreenSecond();
          },
        );
      case AddAccidentScreenFirst.id:
        return MaterialPageRoute(
          builder: (context) {
            return AddAccidentScreenFirst();
          },
        );
      case AccidentRegisterScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return AccidentRegisterScreen();
          },
        );
      case AccidentDetailsScreen.id:
        return MaterialPageRoute(
          builder: (context) {
            return AccidentDetailsScreen();
          },
        );
      default:
        return null;
    }
  }
}

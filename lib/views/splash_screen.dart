import 'dart:async';
import 'package:flutter/material.dart';
import 'package:irad/extras/constants/color_constants.dart';
import 'package:irad/extras/constants/image_constants.dart';
import 'package:irad/views/login_as_screen.dart';
import 'package:irad/views/login_screen.dart';
import 'package:irad/views/widgets/custom_app_logo.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return LoginAsScreen();
    }));
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: Padding(
        padding: const EdgeInsets.all(33),
        child: Stack(
          children: [
            Positioned(
                top: 250,
                left: 87.44,
                right: 83.67,
                child: CustomAppLogo(
                  isSmall: false,
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image.asset(ImageConstants.morthLogo),
                  ImageView(
                    url: ImageConstants.tamilNaduPoliceLogo,
                  ),
                  ImageView(
                    url: ImageConstants.morthLogo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final String url;

  const ImageView({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(url),
        ),
      ),
    );
  }
}

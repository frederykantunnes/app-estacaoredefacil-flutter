import 'package:flutter/material.dart';
import 'package:redefacilconstrucao/ui/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: Colors.white,
          navigateAfterSeconds: Home(),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Padding(
             padding: EdgeInsets.all(30),
             child: Image.asset('images/splash.png',),
           )
         ],
        )
      ],
    );
  }
}

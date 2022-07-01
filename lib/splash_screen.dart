import 'package:finca/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => new _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      title: new Text('Welcome In SplashScreen'
      ),
      image: new Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Colors.red,
      pageRoute: _createRoute()
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
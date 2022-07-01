import 'package:flutter/material.dart';
import 'home_page.dart';
import 'splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() => runApp(Finca());

class Finca extends StatelessWidget {
  const Finca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: SplashScr(),
    );
  }
}

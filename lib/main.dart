import 'package:flutter/material.dart';
import 'bottomNavbar.dart';
import 'splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

void main() => runApp(Finca());

class Finca extends StatelessWidget {
  const Finca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: SplashScreen(),
      // home: Scaffold(
      // appBar: AppBar(
      //   backgroundColor: kblueGrey,
      //   elevation: 20,
      //   title: const Text('F I N C A'),
      //   centerTitle: true,
      // ),
      //   body: BottomNavBar(),
      // )

      //
    );
  }
}

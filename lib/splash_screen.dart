import 'package:finca/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:finca/bottomNavbar.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomNavBar()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'fin',
            style: TextStyle(
                color: Colors.black, fontSize: 70, fontFamily: 'MusticaPro'),
          ),
          Text(
            'ca',
            style: TextStyle(
                color: Colors.white, fontSize: 70, fontFamily: 'MusticaPro'),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 91, 126),
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

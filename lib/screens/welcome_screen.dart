import 'package:finca/screens/login_screen.dart';
import 'package:finca/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import '../components.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:finca/colors_picker.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation =
        ColorTween(begin: kfincaPink, end: kfincaPink).animate(controller!);
    controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation?.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TypewriterAnimatedTextKit(
                      //   text: ['ca'],
                      //   textStyle: TextStyle(
                      //     color: kblueGrey,
                      //     fontSize: 70.0,
                      //     fontFamily: 'MusticsPro',
                      //   ),
                      // ),
                      Text(
                        'fin',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontFamily: 'MusticaPro'),
                      ),
                      Text(
                        'ca',
                        style: TextStyle(
                            color: kblueGrey,
                            fontSize: 70,
                            fontFamily: 'MusticaPro'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

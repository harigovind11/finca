import 'package:finca/core/constants.dart';
import 'package:finca/presentation/screens/login_screen.dart';
import 'package:finca/presentation/screens/registration_screen.dart';
import 'package:finca/widgets/logo_finca.dart';
import 'package:flutter/material.dart';
import '../../components.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../widgets/rounded_button.dart';
import '../../core/colors_picker.dart';

class WelcomeScreen extends StatelessWidget {
  final String title;

  const WelcomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kfincaPinkBg,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 170, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Logo(
                  color1: kBluegrey,
                  color2: kWhite,
                ),
              ],
            ),
            Spacer(),
            RoundedButton(
              title: 'Log In',
              colour: Colors.white,
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/login');
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.white,
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}

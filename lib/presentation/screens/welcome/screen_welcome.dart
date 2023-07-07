import 'package:finca/core/colors_picker.dart';
import 'package:finca/presentation/widgets/logo_finca.dart';
import 'package:finca/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBluegrey,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 170, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Logo(
                  color1: kBlueShade,
                  color2: kWhite,
                ),
              ],
            ),
            const Spacer(),
            RoundedButton(
              title: 'Log In',
              backgroundColor: kWhite,
              textColor: kBluegrey,
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/login');
              },
            ),
            RoundedButton(
              title: 'Register',
              backgroundColor: kWhite,
              textColor: kBluegrey,
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

import 'package:finca/core/colors_picker.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/logo_finca.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
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
                AutoRouter.of(context).replace(const SignInRoute());
              },
            ),
            RoundedButton(
              title: 'Register',
              backgroundColor: kWhite,
              textColor: kBluegrey,
              onPressed: () {
                AutoRouter.of(context).replace(const SignUpRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}

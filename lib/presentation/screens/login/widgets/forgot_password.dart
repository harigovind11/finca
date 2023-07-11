// ignore_for_file: unnecessary_null_comparison, unused_local_variable, unused_field

import 'package:finca/core/constants.dart';
import 'package:finca/presentation/widgets/custom_textfield.dart';
import 'package:finca/presentation/widgets/logo_finca.dart';
import 'package:finca/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:finca/core/colors_picker.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBluegrey,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 170, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Logo(
              color1: kWhite,
              color2: kBlueShade,
            ),
            kHeight60,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your Email and we will send you a reset link',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: kWhite),
                ),
              ],
            ),
            kHeight60,
            CustomTextField.dark(
              controller: _emailController,
              hintText: 'Email',
              prefixIcon: LineIcons.at,
              keyboardType: TextInputType.emailAddress,
            ),
            kHeight20,
            const Spacer(),
            RoundedButton(
              title: 'Reset Password',
              backgroundColor: kWhite,
              textColor: kBluegrey,
              onPressed: () async {
                passwordReset();
                popUpWarning(context, 'Reset email sent sucessfully');
                await Future.delayed(const Duration(seconds: 1));
                await Navigator.of(context).popAndPushNamed('/login');
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> passwordReset() async {
    try {
      final _email = _emailController.text.trim();
      await _auth.sendPasswordResetEmail(email: _email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        popUpWarning(context, 'Invalid email');
      } else if (e.code == 'user-not-found') {
        popUpWarning(context, 'User not found');
      } else if (e.code == 'unknown') {
        popUpWarning(context, 'Email field empty ');
      }
      print(e);
    }
  }

  void popUpWarning(BuildContext context, String errorMessage) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        content: Text(
          errorMessage,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.blueGrey,
            fontFamily: 'MusticaPro',
          ),
        ),
      ),
    );
  }
}

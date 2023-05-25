// ignore_for_file: unused_local_variable, unrelated_type_equality_checks, unnecessary_null_comparison

import 'package:finca/presentation/widgets/custom_textfield.dart';
import 'package:finca/presentation/widgets/logo_finca.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  final String title;

  const RegistrationScreen({super.key, required this.title});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kfincaPinkBg,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 170, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Logo(
              color1: kWhite,
              color2: kBluegrey,
            ),
            kHeight50,
            CustomTextField(
              controller: _usernameController,
              hintText: 'Username',
              prefixIcon: LineIcons.user,
              keyboardType: TextInputType.name,
            ),
            kHeight20,
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
              prefixIcon: LineIcons.at,
              keyboardType: TextInputType.emailAddress,
            ),
            kHeight20,
            CustomTextField(
              controller: _passwordController,
              hintText: 'Password',
              prefixIcon: LineIcons.key,
              obscureText: passwordVisible,
              suffixIconButton: IconButton(
                splashRadius: 1,
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: kWhite,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
            const Spacer(),
            RoundedButton(
              title: 'Register',
              colour: Colors.white,
              onPressed: () async {
                final _name = _usernameController.text.trim();
                final _email = _emailController.text.trim();
                final _password = _passwordController.text.trim();

                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                    email: _email,
                    password: _password,
                  );

                  if (newUser != null || newUser != false) {
                    if (newUser != null || newUser != false) {
                      final _sharedPrefs =
                          await SharedPreferences.getInstance();
                      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);
                      Navigator.of(context).popAndPushNamed('/mainpage');
                    }
                    Navigator.of(context).popAndPushNamed('/mainpage');
                  }
                  setState(() {});
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    popUpWarning(context, 'Weak Password');
                    Navigator.of(context).popAndPushNamed('/signup');
                  } else if (e.code == 'email-already-in-use') {
                    popUpWarning(context, 'Email already exist ');
                    Navigator.of(context).popAndPushNamed('/signup');
                  } else if (e.code == 'invalid-email') {
                    popUpWarning(context, 'Invalid Email ');
                    Navigator.of(context).popAndPushNamed('/signup');
                  } else if (e.code == 'unknown') {
                    popUpWarning(context, 'Email / Password field empty ');
                    Navigator.of(context).popAndPushNamed('/signup');
                  } else {
                    print(e);
                  }
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Existing member ?',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: kWhite),
                ),
                MaterialButton(
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kBluegrey),
                  ),
                  splashColor: Colors.transparent,
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 400));
                    Navigator.of(context).popAndPushNamed('/login');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
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

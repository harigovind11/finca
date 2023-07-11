// ignore_for_file: unnecessary_null_comparison

import 'package:finca/presentation/widgets/logo_finca.dart';
import 'package:finca/presentation/widgets/warning_popup.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../widgets/custom_textfield.dart';

import 'package:finca/core/colors_picker.dart';
import '../../widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  late User loggedInUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBluegrey,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 170, bottom: 100),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Logo(
                color1: kWhite,
                color2: kBlueShade,
              ),
              kHeight60,
              CustomTextField.dark(
                controller: _emailController,
                hintText: 'Email',
                prefixIcon: LineIcons.at,
                keyboardType: TextInputType.emailAddress,
              ),
              kHeight20,
              CustomTextField.dark(
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
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 400));
                      Navigator.of(context).pushNamed('/forgotPassword');
                    },
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kTeal),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              RoundedButton(
                title: 'Log In',
                backgroundColor: kWhite,
                textColor: kBluegrey,
                onPressed: () async {
                  final _email = _emailController.text.trim();
                  final _password = _passwordController.text.trim();

                  try {
                    final auth = await _auth.signInWithEmailAndPassword(
                        email: _email, password: _password);
                    if (auth != null || auth != false) {
                      final _sharedPrefs =
                          await SharedPreferences.getInstance();
                      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);
                      Navigator.of(context).popAndPushNamed('/mainpage');
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'invalid-email') {
                      popUpWarning(context, 'Invalid email');
                    } else if (e.code == 'user-not-found') {
                      popUpWarning(context, 'User not found');
                    } else if (e.code == 'wrong-password') {
                      popUpWarning(context, 'Wrong password');
                    } else if (e.code == 'unknown') {
                      popUpWarning(context, 'Email / Password field empty ');
                    } else {
                      print(e);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member ?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kWhite),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 400));
                      Navigator.of(context).popAndPushNamed('/signup');
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kTeal),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:finca/presentation/widgets/logo_finca.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../widgets/custom_textfield.dart';

import 'package:finca/core/colors_picker.dart';
import '../../widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  final String title;

  LoginScreen({super.key, required this.title});
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
      backgroundColor: kfincaPinkBg,
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
                color2: kBluegrey,
              ),
              kHeight60,
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
              kHeight20,
              const Spacer(),
              RoundedButton(
                title: 'Log In',
                colour: Colors.white,
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
                      Navigator.of(context).popAndPushNamed('/login');
                    } else if (e.code == 'user-not-found') {
                      popUpWarning(context, 'User not found');
                      Navigator.of(context).popAndPushNamed('/login');
                    } else if (e.code == 'wrong-password') {
                      popUpWarning(context, 'Wrong password');
                      Navigator.of(context).popAndPushNamed('/login');
                    } else if (e.code == 'unknown') {
                      popUpWarning(context, 'Email / Password field empty ');
                      Navigator.of(context).popAndPushNamed('/login');
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
                          color: kBluegrey),
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

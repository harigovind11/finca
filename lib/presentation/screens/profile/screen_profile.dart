// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finca/presentation/screens/profile/widgets/profile_button_widget.dart';
import 'package:finca/presentation/widgets/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kBluegrey,
          elevation: 0,
          title: const TextWidget(
            text: 'Profile',
            color: kWhite,
            fontSize: 28,
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kBluegrey,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'images/foreground.png',
                  ),
                ),
                kHeight40,
                const TextWidget(
                  text: 'name',
                  color: kWhite,
                  fontSize: 30,
                ),
                kHeight10,
                TextWidget(
                  text: 'Email -: ${_user?.email! ?? "N/A"}',
                  color: kGrey,
                  fontSize: 15,
                ),
                kHeight40,
                ProfileButtonWidget(
                  text: 'Edit Your profile',
                  prefixIcon: LineIcons.userEdit,
                  onTap: () {
                    print('pressed');
                  },
                ),
                ProfileButtonWidget(
                  text: 'App Settings',
                  prefixIcon: LineIcons.userCog,
                  onTap: () {
                    print('pressed');
                  },
                ),
                ProfileButtonWidget(
                  text: 'About Finca',
                  prefixIcon: LineIcons.infoCircle,
                  onTap: () {
                    print('pressed');
                  },
                ),
                RoundedButton(
                  title: 'Sign Out',
                  backgroundColor: kBlueShade,
                  textColor: kWhite,
                  onPressed: () {
                    signOut(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signOut(BuildContext context) async {
    final _auth = FirebaseAuth.instance;
    await _auth.signOut();
    final _sharedPrefs = await SharedPreferences.getInstance();
    _sharedPrefs.clear();
    Navigator.pushReplacementNamed(context, '/welcome');
  }
}

//TODO firebase db 'name' into username
//TODO add Button Functions 
//TODO user dp add and edit option
  
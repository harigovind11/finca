import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  final _user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Text(_user?.email! ?? "sdsd"),
              ElevatedButton(
                onPressed: () async {
                  signOut(context);
                },
                child: Text('Sign out'),
              )
            ],
          ),
        )),
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

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:finca/application/auth/auth_bloc.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/profile/widgets/profile_button_widget.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = FirebaseAuth.instance.currentUser;
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    AutoRouter.of(context).replace(const WelcomeRoute()),
                orElse: () {});
          },
        ),
      ],
      child: MaterialApp(
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
                    text: 'Email -: //${_user?.email! ?? "N/A"}',
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
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//TODO firebase db 'name' into username
//TODO add Button Functions 
//TODO user dp add and edit option
  
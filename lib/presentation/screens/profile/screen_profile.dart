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
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

@RoutePage()
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
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                  //Name
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
                      showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.info(
                          backgroundColor: kRed,
                          message:
                              'This feature is not avaliable right now, Sorry for the inconvenience',
                        ),
                      );
                    },
                  ),
                  ProfileButtonWidget(
                    text: 'App Settings',
                    prefixIcon: LineIcons.userCog,
                    onTap: () {
                      showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.info(
                          backgroundColor: kRed,
                          message:
                              'This feature is not avaliable right now, Sorry for the inconvenience',
                        ),
                      );
                    },
                  ),
                  ProfileButtonWidget(
                    text: 'About Finca',
                    prefixIcon: LineIcons.infoCircle,
                    onTap: () {
                      showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.info(
                          backgroundColor: kRed,
                          message:
                              'This feature is not avaliable right now, Sorry for the inconvenience',
                        ),
                      );
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


//TODO add Button Functions 
//TODO user dp add and edit option
  
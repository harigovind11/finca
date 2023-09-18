import 'package:finca/application/auth/auth_bloc.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finca/presentation/screens/widgets/logo_finca.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) async {},
          authenticated: (_) async {
            AutoRouter.of(context).replace(const MainRoute());
          },
          unauthenticated: (_) async {
            AutoRouter.of(context).replace(const WelcomeRoute());
          },
        );
      },
      child: const Scaffold(
        backgroundColor: kBluegrey,
        body: Padding(
          padding: EdgeInsets.only(top: 170),
          child: Logo(
            color1: kWhite,
            color2: kBlueShade,
          ),
        ),
      ),
    );
  }
}

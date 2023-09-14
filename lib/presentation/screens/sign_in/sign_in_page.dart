import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:finca/application/auth/auth_bloc.dart';
import 'package:finca/presentation/screens/sign_in/widgets/sign_in_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:finca/injectable.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DoubleBack(
      message: 'Press back again to close',
      child: Scaffold(
          backgroundColor: kBluegrey,
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<SignInFormBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<AuthBloc>(),
              ),
            ],
            child: SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 100,
                      bottom: 25,
                    ),
                    child: const SignInForm(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

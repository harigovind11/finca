import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:finca/application/auth/auth_bloc.dart';
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/logo_finca.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'widgets/app_login_button_row.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.authFailureOrSucessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) {
                showTopSnackBar(
                  Overlay.of(context),
                  CustomSnackBar.error(
                    backgroundColor: kGreyShade,
                    message: failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server Error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid Email & Password Combination',
                    ),
                  ),
                );
              },
              (_) {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
                AutoRouter.of(context).replace(const MainRoute());
              },
            ),
          );
        },
        builder: (context, state) {
          return DoubleBack(
            message: 'Press back again to close',
            child: Scaffold(
              backgroundColor: kBluegrey,
              body: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 170, bottom: 100),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Logo(
                          color1: kBlueShade,
                          color2: kWhite,
                        ),
                      ],
                    ),
                    const Spacer(),

                    RoundedButton(
                      title: 'Sign In',
                      backgroundColor: kWhite,
                      textColor: kBluegrey,
                      onPressed: () {
                        AutoRouter.of(context).replace(const SignInRoute());
                      },
                    ),
                    RoundedButton(
                      title: 'Sign Up',
                      backgroundColor: kWhite,
                      textColor: kBluegrey,
                      onPressed: () {
                        AutoRouter.of(context).replace(const SignUpRoute());
                      },
                    ),
                    kHeight20,
                    const AppLoginButtonRow(),
                    // FlutterSocialButton(
                    //   onTap: () {},
                    //   buttonType: ButtonType.google,
                    // )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

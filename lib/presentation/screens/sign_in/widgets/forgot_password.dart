// ignore_for_file: unnecessary_null_comparison, unused_local_variable, unused_field

import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:finca/presentation/screens/widgets/logo_finca.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final _formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
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
                showTopSnackBar(
                  Overlay.of(context),
                  const CustomSnackBar.success(
                      backgroundColor: kTeal,
                      message: 'Reset email sent sucessfully'),
                );

                AutoRouter.of(context).replace(const SignInRoute());
              },
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: kBluegrey,
            body: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 170, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Logo(
                    color1: kWhite,
                    color2: kBlueShade,
                  ),
                  kHeight60,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter your Email and we will send you a reset link',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kWhite),
                      ),
                    ],
                  ),
                  kHeight60,
                  Form(
                    key: _formKey,
                    child: CustomTextField.light(
                      hintText: 'Email',
                      prefixIcon: LineIcons.at,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => context.read<SignInFormBloc>().add(
                            SignInFormEvent.emailChanged(value),
                          ),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                              (failure) => failure.maybeMap(
                                    empty: (_) => 'Cannot be empty',
                                    invalidEmail: (_) => 'Invalid Email',
                                    orElse: () => null,
                                  ),
                              (_) => null),
                    ),
                  ),
                  kHeight20,
                  const Spacer(),
                  RoundedButton(
                    title: 'Reset Password',
                    backgroundColor: kWhite,
                    textColor: kBluegrey,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<SignInFormBloc>()
                            .add(const SendPasswordResetEmail());
                        await Future.delayed(const Duration(seconds: 1));
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

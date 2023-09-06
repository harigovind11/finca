import 'package:auto_route/auto_route.dart';
import 'package:finca/application/auth/auth_bloc.dart';
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:finca/presentation/screens/widgets/logo_finca.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:finca/presentation/screens/widgets/warning_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _passwordTextEditingController = TextEditingController();
    // final passwordVisible = useState(false);
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSucessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              popUpWarning(
                context,
                failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email & Password Combination',
                ),
              );
            },
            (_) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              AutoRouter.of(context).replace(MainRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Logo(
                color1: kWhite,
                color2: kBlueShade,
              ),
              kHeight60,
              CustomTextField.dark(
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
                        (l) => l.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              kHeight20,
              CustomTextField.dark(
                controller: _passwordTextEditingController,
                hintText: 'Password',
                prefixIcon: LineIcons.key,
                showObscure: true,
                onChanged: (value) {
                  context.read<SignInFormBloc>().add(
                        SignInFormEvent.passwordChanged(value),
                      );
                  _passwordTextEditingController.text = value;
                },
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                        (l) => l.maybeMap(
                              invalidPassword: (_) => 'Invalid Password',
                              shortPassword: (_) => 'Short Password',
                              passwordDoesntMatch: (_) =>
                                  'Password doesnt match',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              kHeight20,
              CustomTextField.dark(
                hintText: 'Confirm Password',
                prefixIcon: LineIcons.key,
                showObscure: true,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.confirmPasswordChanged(
                        _passwordTextEditingController.text,
                        value,
                      ),
                    ),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .confirmPassword
                    .value
                    .fold(
                        (l) => l.maybeMap(
                              invalidPassword: (_) => 'Invalid Password',
                              shortPassword: (_) => 'Short Password',
                              passwordDoesntMatch: (_) =>
                                  'Password doesnt match',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 400));
                      AutoRouter.of(context).push(const ForgotPasswordRoute());
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
              kHeight20,
              RoundedButton(
                title: 'Log In',
                backgroundColor: kWhite,
                textColor: kBluegrey,
                onPressed: () async {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .signInWithEmailAndPasswordPressed());
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
                      AutoRouter.of(context).replace(const SignUpRoute());
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
        );
      },
    );
  }
}

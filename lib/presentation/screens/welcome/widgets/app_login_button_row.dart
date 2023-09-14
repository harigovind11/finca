import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';

class AppLoginButtonRow extends StatelessWidget {
  const AppLoginButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Material(
          elevation: 5.0,
          color: kWhite,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
              onPressed: () {
                context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signWithGooglePressed());
              },
              splashColor: kTransparent,
              child: const LineIcon.googlePlus(
                color: kRed,
              )),
        ),
        Material(
          elevation: 5.0,
          color: kWhite,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
              onPressed: () {},
              splashColor: kTransparent,
              child: const LineIcon.facebookF(
                color: kBlue,
              )),
        ),
        Material(
          elevation: 5.0,
          color: kWhite,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
              onPressed: () {},
              splashColor: kTransparent,
              child: const LineIcon.twitter(
                color: kBluegrey,
              )),
        ),
      ],
    );
  }
}

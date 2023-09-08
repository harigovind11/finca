part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Option<Either<AuthFailure, Unit>> authFailureOrSucessOption,
  }) = _SignInformState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        authFailureOrSucessOption: none(),
      );
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:finca/domain/auth/auth_failure.dart';
import 'package:finca/domain/auth/i_auth_facade.dart';
import 'package:finca/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iAuthFacde;
  SignInFormBloc(
    this._iAuthFacde,
  ) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSucessOption: none()));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSucessOption: none()));
    });
    on<ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(
          confirmPassword: ConfirmPassword(
            event.password,
            event.confirmPasswordStr,
          ),
          authFailureOrSucessOption: none()));
    });
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSucess;

      final isEmailVaild = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();
      final isConfirmPasswordValid = state.confirmPassword.isValid();

      if (state.password.value == state.confirmPassword.value) {
        if (isEmailVaild && isPasswordValid && isConfirmPasswordValid) {
          emit(state.copyWith(authFailureOrSucessOption: none()));
          failureOrSucess = await _iAuthFacde.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
      }
      emit(
          state.copyWith(authFailureOrSucessOption: optionOf(failureOrSucess)));
    });
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isConfirmPasswordValid = state.confirmPassword.isValid();
        if (state.password.value == state.confirmPassword.value) {
          if (isEmailValid && isPasswordValid && isConfirmPasswordValid) {
            emit(state.copyWith(authFailureOrSucessOption: none()));
            failureOrSuccess = await _iAuthFacde.signInWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
          }
        }
        emit(
          state.copyWith(
            authFailureOrSucessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
    on<SignWithGooglePressed>((event, emit) async {
      emit(state.copyWith(authFailureOrSucessOption: none()));
      final failureOrSucees = await _iAuthFacde.signInWithGoogle();
      emit(state.copyWith(authFailureOrSucessOption: some(failureOrSucees)));
    });
  }
}

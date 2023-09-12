import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finca/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(
    this._iAuthFacade,
  ) : super(const Initial()) {
    on<AuthCheckRequested>(
      (event, emit) async {
        final userOptions = await _iAuthFacade.getSignedInUser();
        emit(
          userOptions.fold(
            () => const AuthState.unauthenticated(),
            (_) => const AuthState.authenticated(),
          ),
        );
      },
    );
    on<SignedOut>(
      (event, emit) async {
        await _iAuthFacade.signOut();
        emit(
          const AuthState.unauthenticated(),
        );
      },
    );
  }
}

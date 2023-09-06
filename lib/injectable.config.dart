// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:finca/application/auth/auth_bloc.dart' as _i9;
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i8;
import 'package:finca/domain/auth/i_auth_facade.dart' as _i6;
import 'package:finca/infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'package:finca/infrastructure/core/firebase_injectable.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i5.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
        ));
    gh.factory<_i8.SignInFormBloc>(
        () => _i8.SignInFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i6.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}

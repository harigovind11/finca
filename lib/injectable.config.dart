// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:finca/application/auth/auth_bloc.dart' as _i15;
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i11;
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i12;
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i13;
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i14;
import 'package:finca/domain/auth/i_auth_facade.dart' as _i7;
import 'package:finca/domain/services/balance_calculation.dart' as _i3;
import 'package:finca/domain/transaction/i_transaction_repo.dart' as _i9;
import 'package:finca/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'package:finca/infrastructure/core/firebase_injectable.dart' as _i16;
import 'package:finca/infrastructure/transaction/transaction_repo.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
    gh.lazySingleton<_i3.BalanceCalculationService>(
        () => _i3.BalanceCalculationService());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i9.ITransactionRepository>(
        () => _i10.TransactionRepo(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i11.SignInFormBloc>(
        () => _i11.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i12.TransactionActorBloc>(
        () => _i12.TransactionActorBloc(gh<_i9.ITransactionRepository>()));
    gh.factory<_i13.TransactionFormBloc>(
        () => _i13.TransactionFormBloc(gh<_i9.ITransactionRepository>()));
    gh.factory<_i14.TransactionWatcherBloc>(() => _i14.TransactionWatcherBloc(
          gh<_i9.ITransactionRepository>(),
          gh<_i3.BalanceCalculationService>(),
        ));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i7.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}

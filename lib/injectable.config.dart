// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:finca/application/auth/auth_bloc.dart' as _i22;
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i18;
import 'package:finca/application/debt/debt_actor/debt_actor_bloc.dart' as _i23;
import 'package:finca/application/debt/debt_form/debt_form_bloc.dart' as _i24;
import 'package:finca/application/debt/debt_watcher/debt_watcher_bloc.dart'
    as _i25;
import 'package:finca/application/saving_plan/saving_plan_actor/saving_plan_actor_bloc.dart'
    as _i15;
import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart'
    as _i16;
import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart'
    as _i17;
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i19;
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i20;
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i21;
import 'package:finca/domain/auth/i_auth_facade.dart' as _i7;
import 'package:finca/domain/debt/i_debt_repo.dart' as _i9;
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart' as _i11;
import 'package:finca/domain/services/balance_calculation.dart' as _i3;
import 'package:finca/domain/transaction/i_transaction_repo.dart' as _i13;
import 'package:finca/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'package:finca/infrastructure/core/firebase_injectable.dart' as _i26;
import 'package:finca/infrastructure/debt/debt_repo.dart' as _i10;
import 'package:finca/infrastructure/saving_plan/saving_plan_repo.dart' as _i12;
import 'package:finca/infrastructure/transaction/transaction_repo.dart' as _i14;
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
    gh.lazySingleton<_i9.IDebtRepository>(
        () => _i10.DebtRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i11.ISavingPlanRepository>(
        () => _i12.SavingPlanRepo(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i13.ITransactionRepository>(
        () => _i14.TransactionRepo(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i15.SavingPlanActorBloc>(
        () => _i15.SavingPlanActorBloc(gh<_i11.ISavingPlanRepository>()));
    gh.factory<_i16.SavingPlanFormBloc>(
        () => _i16.SavingPlanFormBloc(gh<_i11.ISavingPlanRepository>()));
    gh.factory<_i17.SavingPlanWatcherBloc>(
        () => _i17.SavingPlanWatcherBloc(gh<_i11.ISavingPlanRepository>()));
    gh.factory<_i18.SignInFormBloc>(
        () => _i18.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i19.TransactionActorBloc>(
        () => _i19.TransactionActorBloc(gh<_i13.ITransactionRepository>()));
    gh.factory<_i20.TransactionFormBloc>(
        () => _i20.TransactionFormBloc(gh<_i13.ITransactionRepository>()));
    gh.factory<_i21.TransactionWatcherBloc>(() => _i21.TransactionWatcherBloc(
          gh<_i13.ITransactionRepository>(),
          gh<_i3.BalanceCalculationService>(),
        ));
    gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i23.DebtActorBloc>(
        () => _i23.DebtActorBloc(gh<_i9.IDebtRepository>()));
    gh.factory<_i24.DebtFormBloc>(
        () => _i24.DebtFormBloc(gh<_i9.IDebtRepository>()));
    gh.factory<_i25.DebtWatcherBloc>(() => _i25.DebtWatcherBloc(
          gh<_i9.IDebtRepository>(),
          gh<_i3.BalanceCalculationService>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}

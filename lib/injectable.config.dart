// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:finca/application/account/account_actor/account_actor_bloc.dart'
    as _i28;
import 'package:finca/application/account/account_form/account_form_bloc.dart'
    as _i29;
import 'package:finca/application/account/account_watcher/account_watcher_bloc.dart'
    as _i30;
import 'package:finca/application/auth/auth_bloc.dart' as _i31;
import 'package:finca/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i24;
import 'package:finca/application/bill/bill_actor/bill_actor_bloc.dart' as _i32;
import 'package:finca/application/bill/bill_form/bill_form_bloc.dart' as _i33;
import 'package:finca/application/bill/bill_watcher/bill_watcher_bloc.dart'
    as _i34;
import 'package:finca/application/category/category_actor/catergory_actor_bloc.dart'
    as _i37;
import 'package:finca/application/category/category_form/category_form_bloc.dart'
    as _i35;
import 'package:finca/application/category/category_watcher/category_watcher_bloc.dart'
    as _i36;
import 'package:finca/application/debt/debt_actor/debt_actor_bloc.dart' as _i38;
import 'package:finca/application/debt/debt_form/debt_form_bloc.dart' as _i39;
import 'package:finca/application/debt/debt_watcher/debt_watcher_bloc.dart'
    as _i40;
import 'package:finca/application/saving_plan/saving_plan_actor/saving_plan_actor_bloc.dart'
    as _i21;
import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart'
    as _i22;
import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart'
    as _i23;
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart'
    as _i25;
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart'
    as _i26;
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart'
    as _i27;
import 'package:finca/domain/account/i_account_repo.dart' as _i7;
import 'package:finca/domain/auth/i_auth_facade.dart' as _i9;
import 'package:finca/domain/bill/i_bill_repo.dart' as _i11;
import 'package:finca/domain/category/i_category.dart' as _i13;
import 'package:finca/domain/debt/i_debt_repo.dart' as _i15;
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart' as _i17;
import 'package:finca/domain/services/balance_calculation.dart' as _i3;
import 'package:finca/domain/transaction/i_transaction_repo.dart' as _i19;
import 'package:finca/infrastructure/account/account_repo.dart' as _i8;
import 'package:finca/infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'package:finca/infrastructure/bill/bill_repo.dart' as _i12;
import 'package:finca/infrastructure/category/category_repo.dart' as _i14;
import 'package:finca/infrastructure/core/firebase_injectable.dart' as _i41;
import 'package:finca/infrastructure/debt/debt_repo.dart' as _i16;
import 'package:finca/infrastructure/saving_plan/saving_plan_repo.dart' as _i18;
import 'package:finca/infrastructure/transaction/transaction_repo.dart' as _i20;
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
    gh.lazySingleton<_i7.IAccountRepository>(
        () => _i8.AccountRepo(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i11.IBillRepository>(
        () => _i12.BillRepo(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i13.ICategoryRepository>(
        () => _i14.CategoryRepo(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i15.IDebtRepository>(
        () => _i16.DebtRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i17.ISavingPlanRepository>(
        () => _i18.SavingPlanRepo(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i19.ITransactionRepository>(
        () => _i20.TransactionRepo(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i21.SavingPlanActorBloc>(
        () => _i21.SavingPlanActorBloc(gh<_i17.ISavingPlanRepository>()));
    gh.factory<_i22.SavingPlanFormBloc>(
        () => _i22.SavingPlanFormBloc(gh<_i17.ISavingPlanRepository>()));
    gh.factory<_i23.SavingPlanWatcherBloc>(
        () => _i23.SavingPlanWatcherBloc(gh<_i17.ISavingPlanRepository>()));
    gh.factory<_i24.SignInFormBloc>(
        () => _i24.SignInFormBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i25.TransactionActorBloc>(
        () => _i25.TransactionActorBloc(gh<_i19.ITransactionRepository>()));
    gh.factory<_i26.TransactionFormBloc>(() => _i26.TransactionFormBloc(
          gh<_i19.ITransactionRepository>(),
          gh<_i7.IAccountRepository>(),
        ));
    gh.factory<_i27.TransactionWatcherBloc>(() => _i27.TransactionWatcherBloc(
          gh<_i19.ITransactionRepository>(),
          gh<_i3.BalanceCalculationService>(),
        ));
    gh.factory<_i28.AccountActorBloc>(
        () => _i28.AccountActorBloc(gh<_i7.IAccountRepository>()));
    gh.factory<_i29.AccountFormBloc>(
        () => _i29.AccountFormBloc(gh<_i7.IAccountRepository>()));
    gh.factory<_i30.AccountWatcherBloc>(
        () => _i30.AccountWatcherBloc(gh<_i7.IAccountRepository>()));
    gh.factory<_i31.AuthBloc>(() => _i31.AuthBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i32.BillActorBloc>(
        () => _i32.BillActorBloc(gh<_i11.IBillRepository>()));
    gh.factory<_i33.BillFormBloc>(
        () => _i33.BillFormBloc(gh<_i11.IBillRepository>()));
    gh.factory<_i34.BillWatcherBloc>(
        () => _i34.BillWatcherBloc(gh<_i11.IBillRepository>()));
    gh.factory<_i35.CategoryFormBloc>(
        () => _i35.CategoryFormBloc(gh<_i13.ICategoryRepository>()));
    gh.factory<_i36.CategoryWatcherBloc>(
        () => _i36.CategoryWatcherBloc(gh<_i13.ICategoryRepository>()));
    gh.factory<_i37.CatergoryActorBloc>(
        () => _i37.CatergoryActorBloc(gh<_i13.ICategoryRepository>()));
    gh.factory<_i38.DebtActorBloc>(
        () => _i38.DebtActorBloc(gh<_i15.IDebtRepository>()));
    gh.factory<_i39.DebtFormBloc>(
        () => _i39.DebtFormBloc(gh<_i15.IDebtRepository>()));
    gh.factory<_i40.DebtWatcherBloc>(() => _i40.DebtWatcherBloc(
          gh<_i15.IDebtRepository>(),
          gh<_i3.BalanceCalculationService>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i41.FirebaseInjectableModule {}

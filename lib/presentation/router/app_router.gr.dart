// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    AddAccountRoute.name: (routeData) {
      final args = routeData.argsAs<AddAccountRouteArgs>(
          orElse: () => const AddAccountRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddAccountScreen(
          key: args.key,
          accountEntity: args.accountEntity,
        ),
      );
    },
    AddBillRoute.name: (routeData) {
      final args = routeData.argsAs<AddBillRouteArgs>(
          orElse: () => const AddBillRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddBillScreen(
          key: args.key,
          billEntity: args.billEntity,
        ),
      );
    },
    AddCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AddCategoryRouteArgs>(
          orElse: () => const AddCategoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddCategoryScreen(
          key: args.key,
          categoryEntity: args.categoryEntity,
        ),
      );
    },
    AddDebtRoute.name: (routeData) {
      final args = routeData.argsAs<AddDebtRouteArgs>(
          orElse: () => const AddDebtRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddDebtScreen(
          key: args.key,
          debt: args.debt,
        ),
      );
    },
    AddSavingPlanRoute.name: (routeData) {
      final args = routeData.argsAs<AddSavingPlanRouteArgs>(
          orElse: () => const AddSavingPlanRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddSavingPlanScreen(
          key: args.key,
          savingPlanEntity: args.savingPlanEntity,
        ),
      );
    },
    AddTransactionRoute.name: (routeData) {
      final args = routeData.argsAs<AddTransactionRouteArgs>(
          orElse: () => const AddTransactionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddTransactionScreen(
          key: args.key,
          transaction: args.transaction,
        ),
      );
    },
    AnalyticRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnalyticScreen(),
      );
    },
    BillRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BillScreen(),
      );
    },
    DebtRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DebtScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SavingPlanRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SavingPlanScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    TransactionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TransactionScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddAccountScreen]
class AddAccountRoute extends PageRouteInfo<AddAccountRouteArgs> {
  AddAccountRoute({
    Key? key,
    AccountEntity? accountEntity,
    List<PageRouteInfo>? children,
  }) : super(
          AddAccountRoute.name,
          args: AddAccountRouteArgs(
            key: key,
            accountEntity: accountEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'AddAccountRoute';

  static const PageInfo<AddAccountRouteArgs> page =
      PageInfo<AddAccountRouteArgs>(name);
}

class AddAccountRouteArgs {
  const AddAccountRouteArgs({
    this.key,
    this.accountEntity,
  });

  final Key? key;

  final AccountEntity? accountEntity;

  @override
  String toString() {
    return 'AddAccountRouteArgs{key: $key, accountEntity: $accountEntity}';
  }
}

/// generated route for
/// [AddBillScreen]
class AddBillRoute extends PageRouteInfo<AddBillRouteArgs> {
  AddBillRoute({
    Key? key,
    BillEntity? billEntity,
    List<PageRouteInfo>? children,
  }) : super(
          AddBillRoute.name,
          args: AddBillRouteArgs(
            key: key,
            billEntity: billEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBillRoute';

  static const PageInfo<AddBillRouteArgs> page =
      PageInfo<AddBillRouteArgs>(name);
}

class AddBillRouteArgs {
  const AddBillRouteArgs({
    this.key,
    this.billEntity,
  });

  final Key? key;

  final BillEntity? billEntity;

  @override
  String toString() {
    return 'AddBillRouteArgs{key: $key, billEntity: $billEntity}';
  }
}

/// generated route for
/// [AddCategoryScreen]
class AddCategoryRoute extends PageRouteInfo<AddCategoryRouteArgs> {
  AddCategoryRoute({
    Key? key,
    CategoryEntity? categoryEntity,
    List<PageRouteInfo>? children,
  }) : super(
          AddCategoryRoute.name,
          args: AddCategoryRouteArgs(
            key: key,
            categoryEntity: categoryEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const PageInfo<AddCategoryRouteArgs> page =
      PageInfo<AddCategoryRouteArgs>(name);
}

class AddCategoryRouteArgs {
  const AddCategoryRouteArgs({
    this.key,
    this.categoryEntity,
  });

  final Key? key;

  final CategoryEntity? categoryEntity;

  @override
  String toString() {
    return 'AddCategoryRouteArgs{key: $key, categoryEntity: $categoryEntity}';
  }
}

/// generated route for
/// [AddDebtScreen]
class AddDebtRoute extends PageRouteInfo<AddDebtRouteArgs> {
  AddDebtRoute({
    Key? key,
    DebtEntity? debt,
    List<PageRouteInfo>? children,
  }) : super(
          AddDebtRoute.name,
          args: AddDebtRouteArgs(
            key: key,
            debt: debt,
          ),
          initialChildren: children,
        );

  static const String name = 'AddDebtRoute';

  static const PageInfo<AddDebtRouteArgs> page =
      PageInfo<AddDebtRouteArgs>(name);
}

class AddDebtRouteArgs {
  const AddDebtRouteArgs({
    this.key,
    this.debt,
  });

  final Key? key;

  final DebtEntity? debt;

  @override
  String toString() {
    return 'AddDebtRouteArgs{key: $key, debt: $debt}';
  }
}

/// generated route for
/// [AddSavingPlanScreen]
class AddSavingPlanRoute extends PageRouteInfo<AddSavingPlanRouteArgs> {
  AddSavingPlanRoute({
    Key? key,
    SavingPlanEntity? savingPlanEntity,
    List<PageRouteInfo>? children,
  }) : super(
          AddSavingPlanRoute.name,
          args: AddSavingPlanRouteArgs(
            key: key,
            savingPlanEntity: savingPlanEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'AddSavingPlanRoute';

  static const PageInfo<AddSavingPlanRouteArgs> page =
      PageInfo<AddSavingPlanRouteArgs>(name);
}

class AddSavingPlanRouteArgs {
  const AddSavingPlanRouteArgs({
    this.key,
    this.savingPlanEntity,
  });

  final Key? key;

  final SavingPlanEntity? savingPlanEntity;

  @override
  String toString() {
    return 'AddSavingPlanRouteArgs{key: $key, savingPlanEntity: $savingPlanEntity}';
  }
}

/// generated route for
/// [AddTransactionScreen]
class AddTransactionRoute extends PageRouteInfo<AddTransactionRouteArgs> {
  AddTransactionRoute({
    Key? key,
    TransactionEntity? transaction,
    List<PageRouteInfo>? children,
  }) : super(
          AddTransactionRoute.name,
          args: AddTransactionRouteArgs(
            key: key,
            transaction: transaction,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTransactionRoute';

  static const PageInfo<AddTransactionRouteArgs> page =
      PageInfo<AddTransactionRouteArgs>(name);
}

class AddTransactionRouteArgs {
  const AddTransactionRouteArgs({
    this.key,
    this.transaction,
  });

  final Key? key;

  final TransactionEntity? transaction;

  @override
  String toString() {
    return 'AddTransactionRouteArgs{key: $key, transaction: $transaction}';
  }
}

/// generated route for
/// [AnalyticScreen]
class AnalyticRoute extends PageRouteInfo<void> {
  const AnalyticRoute({List<PageRouteInfo>? children})
      : super(
          AnalyticRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyticRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BillScreen]
class BillRoute extends PageRouteInfo<void> {
  const BillRoute({List<PageRouteInfo>? children})
      : super(
          BillRoute.name,
          initialChildren: children,
        );

  static const String name = 'BillRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DebtScreen]
class DebtRoute extends PageRouteInfo<void> {
  const DebtRoute({List<PageRouteInfo>? children})
      : super(
          DebtRoute.name,
          initialChildren: children,
        );

  static const String name = 'DebtRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SavingPlanScreen]
class SavingPlanRoute extends PageRouteInfo<void> {
  const SavingPlanRoute({List<PageRouteInfo>? children})
      : super(
          SavingPlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavingPlanRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TransactionScreen]
class TransactionRoute extends PageRouteInfo<void> {
  const TransactionRoute({List<PageRouteInfo>? children})
      : super(
          TransactionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

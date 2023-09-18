import 'package:auto_route/auto_route.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/presentation/screens/add_category/screen_add_category.dart';
import 'package:flutter/material.dart';

import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/screens/add_account/screen_add_account.dart';
import 'package:finca/presentation/screens/add_bill/screen_add_bill.dart';
import 'package:finca/presentation/screens/add_debt/screen_add_debt.dart';
import 'package:finca/presentation/screens/add_saving_plan/screen_add_saving_plan.dart';
import 'package:finca/presentation/screens/add_transaction/screen_add_transaction.dart';
import 'package:finca/presentation/screens/analytics/screen_analytics.dart';
import 'package:finca/presentation/screens/debt/screen_debt.dart';
import 'package:finca/presentation/screens/home/screen_home.dart';
import 'package:finca/presentation/screens/main_page/screen_main_page.dart';
import 'package:finca/presentation/screens/profile/screen_profile.dart';
import 'package:finca/presentation/screens/saving_plan/screen_saving_plan.dart';
import 'package:finca/presentation/screens/sign_in/sign_in_page.dart';
import 'package:finca/presentation/screens/sign_in/widgets/forgot_password.dart';
import 'package:finca/presentation/screens/sign_up/sign_up_page.dart';
import 'package:finca/presentation/screens/splash/screen_splash.dart';
import 'package:finca/presentation/screens/transaction/screen_transactions.dart';
import 'package:finca/presentation/screens/welcome/screen_welcome.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: SavingPlanRoute.page),
        AutoRoute(page: AddTransactionRoute.page),
        AutoRoute(page: AddDebtRoute.page),
        AutoRoute(page: AddSavingPlanRoute.page),
        AutoRoute(page: AddBillRoute.page),
        AutoRoute(page: AddAccountRoute.page),
        AutoRoute(page: AddCategoryRoute.page),
        //?Bottom Nav
        AutoRoute(page: MainRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: DebtRoute.page),
          // AutoRoute(page: AnalyticRoute.page),
          AutoRoute(page: TransactionRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
      ];
}

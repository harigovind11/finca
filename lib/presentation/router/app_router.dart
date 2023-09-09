import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/screens/add_transaction/screen_add_transaction.dart';
import 'package:finca/presentation/screens/analytics/screen_analytics.dart';
import 'package:finca/presentation/screens/home/screen_home.dart';
import 'package:finca/presentation/screens/profile/screen_profile.dart';
import 'package:finca/presentation/screens/saving_plans/saving_plans_screen.dart';
import 'package:finca/presentation/screens/splash/screen_splash.dart';
import 'package:finca/presentation/screens/transactions/screen_transactions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finca/presentation/screens/main_page/screen_main_page.dart';
import 'package:finca/presentation/screens/welcome/screen_welcome.dart';
import 'package:finca/presentation/screens/sign_up/sign_up_page.dart';
import 'package:finca/presentation/screens/sign_in/sign_in_page.dart';
import 'package:finca/presentation/screens/sign_in/widgets/forgot_password.dart';
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
        AutoRoute(page: SavingPlansRoute.page),
        AutoRoute(page: AddTransactionRoute.page),
        AutoRoute(page: MainRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: AnalyticRoute.page),
          AutoRoute(page: TransactionRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
      ];
}

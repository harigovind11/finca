import 'package:finca/core/colors_picker.dart';

import 'package:finca/presentation/screens/home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:finca/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:finca/presentation/screens/analytics/screen_analytics.dart';
import 'package:finca/presentation/screens/transactions/screen_transactions.dart';
import 'package:finca/presentation/screens/profile/screen_profile.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  MainPage({
    super.key,
  });

  final _pages = [
    const HomeScreen(),
    const AnalyticScreen(),
    const TransactionScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int _index, _) {
          return _pages[_index];
        },
      )),
      bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: kTransparent,
            highlightColor: kTransparent,
          ),
          child: const BottomNavigationBarWidget()),
    );
  }
}

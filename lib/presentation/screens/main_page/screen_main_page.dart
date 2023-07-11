import 'package:finca/core/colors_picker.dart';
import 'package:finca/presentation/screens/add_transaction/screen_add_transaction.dart';
import 'package:finca/presentation/screens/home/screen_home.dart';

import 'package:flutter/material.dart';
import 'package:finca/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:finca/presentation/screens/analytics/screen_analytics.dart';
import 'package:finca/presentation/screens/transactions/screen_transactions.dart';
import 'package:finca/presentation/screens/profile/screen_profile.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({
    super.key,
  });

  final _pages = [
    HomeScreen(),
    const AnalyticScreen(),
    AddTransaction(),
    const TransactionScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
        ),
      ],
    );
  }
}

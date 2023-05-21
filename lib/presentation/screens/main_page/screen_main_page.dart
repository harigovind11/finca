import 'package:finca/core/colors_picker.dart';
import 'package:finca/presentation/screens/add_transaction/screen_add_transaction.dart';
import 'package:finca/presentation/screens/home/screen_home.dart';

import 'package:flutter/material.dart';
import 'package:finca/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:finca/presentation/screens/analytics/screen_analytics.dart';
import 'package:finca/presentation/screens/cards/screen_cards.dart';
import 'package:finca/presentation/screens/settings/screen_settings.dart';
import 'package:line_icons/line_icons.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key, required this.title});
  final String title;
  final _pages = const [
    HomeScreen(),
    AnalyticScreen(),
    AddTransaction(),
    CardScreen(),
    SettingScreen(),
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
          bottomNavigationBar: const BottomNavigationBarWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              onPressed: () {},
              elevation: 1,
              backgroundColor: kfincaPinkBg,
              child: const Icon(LineIcons.plus),
            ),
          ),
        )
      ],
    );
  }
}

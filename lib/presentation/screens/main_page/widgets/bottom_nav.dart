import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        DebtRoute(),
        TransactionRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            enableFeedback: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            selectedItemColor: kBluegrey,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: kBluegrey),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedFontSize: 12,
            unselectedFontSize: 10,
            selectedLabelStyle: const TextStyle(fontFamily: 'MusticaPro'),
            unselectedLabelStyle: const TextStyle(fontFamily: 'MusticaPro'),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.fileInvoiceWithUsDollar,
                  ),
                  label: 'Debts'),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.creditCard,
                  ),
                  label: 'Transactions'),
              BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.user,
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}

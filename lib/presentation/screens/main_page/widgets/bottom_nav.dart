import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
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
                    LineIcons.lineChart,
                  ),
                  label: 'Analytics'),
              //for FAB
              BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.plusCircle,
                  color: kBlueShade,
                  size: 30,
                ),
                label: 'ADD',
              ),
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

class BottomNavPageChanger {
  BottomNavPageChanger._internal(); //NamedConstructor
  static BottomNavPageChanger instance = BottomNavPageChanger._internal();
  factory BottomNavPageChanger() {
    return instance;
  }

  Future<void> pageChanger(int index) async {
    indexChangeNotifier.value = index;
  }
}

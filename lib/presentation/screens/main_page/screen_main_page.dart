import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';
import 'package:finca/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: kTransparent,
              highlightColor: kTransparent,
            ),
            child: const BottomNavigationBarWidget()),
      ),
    );
  }
}

import 'package:finca/core/colors_collection.dart';
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
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you want to exit an App'),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(true), // <-- SEE HERE
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: const Text('No'),
                ),
              ],
            ),
          )) ??
          false;
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          bottomNavigationBar: Theme(
              data: ThemeData(
                splashColor: kTransparent,
                highlightColor: kTransparent,
              ),
              child: const BottomNavigationBarWidget()),
        ),
      ),
    );
  }
}

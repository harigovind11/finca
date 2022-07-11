import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CalendarAppBar(
          onDateChanged: (value) => print(value),
          firstDate: DateTime.now().subtract(Duration(days: 140)),
          lastDate: DateTime.now(),
        ),
      ),
    );
  }
}

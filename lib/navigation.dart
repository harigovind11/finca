import 'package:finca/screens/add_transaction.dart';
import 'package:finca/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'screens/home_screen.dart';
import 'screens/transaction_screen.dart';

import 'package:finca/colors_picker.dart';

final List<Widget> listOfWidget = <Widget>[
  HomeScreen(),
  TransactionScreen(),
  AddTransaction(),
  ProfileScreen()
];

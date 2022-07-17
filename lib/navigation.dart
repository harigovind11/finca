import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'home_screen.dart';
import 'transaction_screen.dart';

import 'package:finca/colors_picker.dart';

final List<Widget> listOfWidget = <Widget>[
  const HomeScreen(),
  // SafeArea(
  //   child: Container(
  //     alignment: Alignment.center,
  //     child: const Icon(
  //       LineIcons.home,
  //       size: 56,
  //       color: kblueGrey,
  //     ),
  //   ),
  // ),
  const TransactionScreen(),
  // Container(
  //   alignment: Alignment.center,
  //   child: const Icon(
  //     LineIcons.creditCard,
  //     size: 56,
  //     color: kblueGrey,
  //   ),
  // ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      LineIcons.plusCircle,
      size: 56,
      color: kblueGrey,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      LineIcons.user,
      size: 56,
      color: kblueGrey,
    ),
  ),
];

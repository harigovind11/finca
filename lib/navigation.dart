import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const kblueGrey = Color(0xFF263238);
const kpink = Colors.pink;

final List<Widget> listOfWidget = <Widget>[
  SafeArea(
    child: Container(
      alignment: Alignment.center,
      child: const Icon(
        LineIcons.home,
        size: 56,
        color: kblueGrey,
      ),
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      LineIcons.creditCard,
      size: 56,
      color: kblueGrey,
    ),
  ),
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

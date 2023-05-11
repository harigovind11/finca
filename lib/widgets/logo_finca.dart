import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'fin',
          style: TextStyle(
            color: color1,
            fontSize: 70,
            fontFamily: 'MusticaPro',
          ),
        ),
        Text(
          'ca',
          style: TextStyle(
            color: color2,
            fontSize: 70,
            fontFamily: 'MusticaPro',
          ),
        ),
      ],
    );
  }
}

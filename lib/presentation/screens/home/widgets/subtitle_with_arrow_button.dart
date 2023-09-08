import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'arrow_buttons.dart';

class SubtitleWithArrowButton extends StatelessWidget {
  const SubtitleWithArrowButton(
      {super.key,
      required this.title,
      this.fontSize = 25,
      required this.onPressed,
      required this.titleColor});
  final String title;
  final double fontSize;
  final VoidCallback onPressed;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'MusticaPro',
                color: titleColor,
                fontSize: fontSize,
              ),
            ),
            GreenArrowButton(
              onPressed: onPressed,
            )
          ],
        ),
      ],
    );
  }
}

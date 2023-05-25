import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'arrow_button.dart';

class SubtitleWithArrowButton extends StatelessWidget {
  const SubtitleWithArrowButton(
      {super.key,
      required this.title,
      this.fontSize = 25,
      required this.onPressed});
  final String title;
  final double fontSize;
  final VoidCallback onPressed;
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
                color: kBluegrey,
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

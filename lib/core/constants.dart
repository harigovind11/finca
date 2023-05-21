import 'package:flutter/material.dart';

import 'colors_picker.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

//SizedBoxes height
const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight40 = SizedBox(height: 40);
const kHeight50 = SizedBox(height: 50);
const kHeight60 = SizedBox(height: 60);
const kHeight70 = SizedBox(height: 70);
// SizedBox width
const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth15 = SizedBox(width: 15);
const kWidth20 = SizedBox(width: 20);
//Decorations

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

//Texts
class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'MusticaPro',
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

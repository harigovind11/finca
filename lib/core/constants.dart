import 'package:flutter/material.dart';

//keys
const SAVE_KEY_NAME = 'UserLoggedIn';

//db names
const TRANSACTION_DB_NAME = 'transaction-db';
const MONEY_DETAILS_DB_NAME = 'money-details-db';

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
//border radius
final BorderRadius kRadius5 = BorderRadius.circular(5);
final BorderRadius kRadius10 = BorderRadius.circular(10);
final BorderRadius kRadius20 = BorderRadius.circular(20);
final BorderRadius kRadius30 = BorderRadius.circular(30);
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
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  const TextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'MusticaPro',
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

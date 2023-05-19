import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class GreenArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GreenArrowButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: LineIcon.arrowRight(
          color: kGreen,
          size: 32,
        ));
  }
}

class ArrowButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ArrowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: LineIcon.angleRight(
        color: kGrey,
      ),
    );
  }
}

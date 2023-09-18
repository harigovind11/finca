import 'package:finca/core/colors_collection.dart';
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
        icon: const LineIcon.arrowRight(
          color: kTeal,
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
      icon: const LineIcon.angleRight(
        color: kGrey,
      ),
    );
  }
}

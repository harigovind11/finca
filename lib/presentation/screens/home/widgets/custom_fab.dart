import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: kBlueShade,
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(50, 25))),
      child: Icon(
        icon,
        color: kWhite,
      ),
    );
  }
}

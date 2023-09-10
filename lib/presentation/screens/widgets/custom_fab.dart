import 'package:finca/core/colors_picker.dart';
import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
    required this.onPressed,
    required this.icon,
    this.heroTag,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final Object? heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: kBlueShade,
      onPressed: onPressed,
      heroTag: heroTag,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(60, 15),
              bottomRight: Radius.elliptical(60, 15),
              topRight: Radius.circular(75),
              bottomLeft: Radius.circular(75))),
      child: Icon(
        icon,
        color: kWhite,
      ),
    );
  }
}

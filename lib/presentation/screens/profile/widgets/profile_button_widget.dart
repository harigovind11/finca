import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData prefixIcon;
  const ProfileButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: kBluegreyShade,
              borderRadius: kRadius20,
            ),
            child: Row(
              children: [
                Icon(
                  prefixIcon,
                  color: kBlueShade,
                ),
                kWidth15,
                TextWidget(
                  text: text,
                  color: kWhite,
                  fontSize: 18,
                )
              ],
            ),
          ),
          kHeight20,
        ],
      ),
    );
  }
}

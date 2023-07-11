import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class SavingPlansScrollingWidget extends StatelessWidget {
  final String planName;
  final double goalAmount;
  final EdgeInsetsGeometry outsidePadding;
  final EdgeInsetsGeometry insidePadding;
  final double borderRadius;

  const SavingPlansScrollingWidget.homeScreen({
    super.key,
    required this.planName,
    required this.goalAmount,
    this.outsidePadding = const EdgeInsets.only(left: 10),
    this.insidePadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 15,
    ),
    this.borderRadius = 10,
  });

  const SavingPlansScrollingWidget.savingPlanScreen({
    super.key,
    required this.planName,
    required this.goalAmount,
    this.outsidePadding = const EdgeInsets.only(top: 10),
    this.insidePadding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 20,
    ),
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    final emoji = parser.emojify('🚗');

    return Padding(
      padding: outsidePadding,
      child: Card(
        color: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Container(
          width: 165,
          height: 140,
          child: Padding(
            padding: insidePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          color: kGrey.withOpacity(.4),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        emoji,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    // ArrowButton(
                    //   onPressed: () {},
                    // )
                  ],
                ),
                kHeight20,
                TextWidget(
                  text: planName,
                  color: kBlack,
                  fontSize: 18,
                ),
                kHeight15,
                TextWidget(
                  text: '₹ ${goalAmount.toStringAsFixed(0)}',
                  color: kBluegreyShade,
                  fontSize: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

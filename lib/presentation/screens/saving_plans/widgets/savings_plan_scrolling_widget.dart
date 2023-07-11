import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class SavingPlansScrollingWidget extends StatelessWidget {
  SavingPlansScrollingWidget({
    super.key,
    required this.planName,
    required this.goalAmount,
  });
  final String planName;
  final double goalAmount;
  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    final emoji = parser.emojify('🚗');

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Card(
        color: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 140,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                  text: goalAmount.toString(),
                  color: kBluegrey,
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

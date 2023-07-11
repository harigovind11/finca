import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

import 'arrow_buttons.dart';

// ignore: must_be_immutable
class SavingPlansScrollingWidget extends StatelessWidget {
  final int index;
  var parser = EmojiParser();

  SavingPlansScrollingWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final emoji = parser.emojify('🚗');
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
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
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ArrowButton(
                      onPressed: () {},
                    )
                  ],
                ),
                kHeight5,
                const TextWidget(
                  text: 'New Car',
                  color: kBlack,
                  fontSize: 18,
                ),
                kHeight5,
                const TextWidget(
                  text: '₹57556',
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

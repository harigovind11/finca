import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:line_icons/line_icon.dart';

import '../screen_home.dart';
import 'subtitle_with_arrow_button.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(25),
          topEnd: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          SubtitleWithArrowButton(
            title: 'Recent Transactions',
            onPressed: () {},
          ),
          kHeight5,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => RecentTransactionWidget(),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}

class RecentTransactionWidget extends StatelessWidget {
  var parser = EmojiParser();

  RecentTransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        color: kWhite,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
            width: double.infinity,
            height: 80,
            padding: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: kplatsilver,
                    radius: 20,
                    child: Icon(Icons.abc),
                  ),
                  kWidth15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextWidget(
                        text: 'Receive',
                        color: kGrey,
                        fontSize: 15,
                      ),
                      TextWidget(
                        text: 'Spotify Subscription',
                        color: kBlack,
                        fontSize: 18,
                      ),
                    ],
                  ),
                  kWidth15,
                  const TextWidget(
                    text: '₹196.0',
                    color: kBlack,
                    fontSize: 18,
                  ),
                ])),
      ),
    );
  }
}

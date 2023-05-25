// ignore_for_file: must_be_immutable

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
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
        horizontal: 10,
        vertical: 3,
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
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => RecentTransactionWidget(),
              separatorBuilder: (context, index) {
                return kHeight10;
              },
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
    return Card(
      color: kOrange.withOpacity(.7)
      // kViolet.withOpacity(.7)
      ,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          width: double.infinity,
          height: 80,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kplatsilver,
                  radius: 20,
                  child: Icon(Icons.abc),
                ),
                kWidth15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Receive',
                      color: kOffWhite,
                      fontSize: 15,
                    ),
                    TextWidget(
                      text: 'Spotify Subscription',
                      color: kBlack,
                      fontSize: 18,
                    ),
                    TextWidget(
                      text: 'Date',
                      color: kOffWhite,
                      fontSize: 15,
                    ),
                  ],
                ),
                kWidth15,
                TextWidget(
                  text: '₹196.0',
                  color: kBlack,
                  fontSize: 18,
                ),
              ])),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

import 'subtitle_with_arrow_button.dart';
import 'transaction_list.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.90,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(25),
          topEnd: Radius.circular(25),
        ),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SubtitleWithArrowButton(
            title: 'Recent Transactions',
            titleColor: kBluegrey,
            onPressed: () {
              context.navigateTo(const TransactionRoute());
            },
          ),
          kHeight5,
          const TransactionList(),
        ],
      ),
    );
  }
}

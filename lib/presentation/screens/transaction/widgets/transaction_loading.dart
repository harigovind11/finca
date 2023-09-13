import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';

class TransactionLoadingWidget extends StatelessWidget {
  const TransactionLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(5),
      itemBuilder: (_, i) {
        final delay = (i * 300);
        return Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          decoration: BoxDecoration(
              color: kBluegrey, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              FadeShimmer.round(
                size: 60,
                fadeTheme: FadeTheme.dark,
                millisecondsDelay: delay,
              ),
              kWidth15,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeShimmer(
                    height: 8,
                    width: 150,
                    radius: 4,
                    millisecondsDelay: delay,
                    fadeTheme: FadeTheme.dark,
                  ),
                  kHeight5,
                  FadeShimmer(
                      height: 8,
                      millisecondsDelay: delay,
                      width: 170,
                      radius: 4,
                      fadeTheme: FadeTheme.dark),
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (_, __) => kHeight10,
      itemCount: 10,
    );
  }
}

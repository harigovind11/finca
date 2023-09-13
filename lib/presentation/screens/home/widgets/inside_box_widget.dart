import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';

class InsideBoxWidget extends StatelessWidget {
  const InsideBoxWidget(
      {super.key, required this.amount, required this.isIncome});
  final String amount;
  final bool isIncome;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  isIncome ? 'images/income.jpg' : 'images/expense.jpg'),
              fit: BoxFit.cover,
            ),
            // color: kBluegreyShade,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: isIncome ? 'Income' : 'Expense',
                color: kGreyShade,
                fontSize: 20,
              ),
              kHeight10,
              TextWidget(
                text: amount,
                color: kBluegrey,
                fontSize: 32,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InsideBoxLoading extends StatelessWidget {
  final bool isIncome;
  const InsideBoxLoading({super.key, required this.isIncome});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kBluegreyShade,
            // color: kBluegreyShade,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
          child: Row(
            children: [
              FadeShimmer.round(
                size: 60,
                fadeTheme: FadeTheme.dark,
                millisecondsDelay: 300,
              ),
              kWidth15,
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeShimmer(
                    height: 8,
                    width: 150,
                    radius: 4,
                    millisecondsDelay: 300,
                    fadeTheme: FadeTheme.dark,
                  ),
                  kHeight15,
                  FadeShimmer(
                      height: 8,
                      millisecondsDelay: 300,
                      width: 170,
                      radius: 4,
                      fadeTheme: FadeTheme.dark),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
} 
  // //* Percentange widget and arrow button
  //             Padding(
  //               padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
  //               child: Row(
  //                 children: [
  //                   Container(
  //                     width: 60,
  //                     height: 35,
  //                     decoration: const BoxDecoration(
  //                       color: kTeal,
  //                       borderRadius: BorderRadius.all(
  //                         Radius.circular(50),
  //                       ),
  //                     ),
  //                     child: const Row(
  //                       children: [
  //                         Icon(
  //                           Icons.arrow_drop_down,
  //                           color: kWhite,
  //                         ),
  //                         TextWidget(
  //                           text: '3.2 %',
  //                           color: kWhite,
  //                           fontSize: 12,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   kWidth5,
  //                   ArrowButton(
  //                     onPressed: () {},
  //                   )
  //                 ],
  //               ),
  //             ),
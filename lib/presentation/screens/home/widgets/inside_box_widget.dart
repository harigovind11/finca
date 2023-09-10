import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';

import 'arrow_buttons.dart';

class InsideBoxWidget extends StatelessWidget {
  const InsideBoxWidget({super.key, required this.expense});
  final String expense;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kBluegreyShade,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Monthly spend
              Column(
                children: [
                  const TextWidget(
                    text: 'Money Spend',
                    color: kGreyShade,
                    fontSize: 18,
                  ),
                  kHeight5,
                  TextWidget(
                    text: expense,
                    color: kWhite,
                    fontSize: 32,
                  ),
                ],
              ),
              //* Percentange widget and arrow button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: kTeal,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down,
                            color: kWhite,
                          ),
                          TextWidget(
                            text: '3.2 %',
                            color: kWhite,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                    kWidth5,
                    ArrowButton(
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          //* Graph
        ],
      ),
    );
  }
}

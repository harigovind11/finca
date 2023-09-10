import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import 'bar_graph/bar_graph.dart';

class InsideBoxWidget extends StatelessWidget {
  const InsideBoxWidget({
    Key? key,
    required this.totalBalance,
  }) : super(key: key);
  final String totalBalance;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Transaction
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    text: 'Transaction',
                    color: kGreyShade,
                    fontSize: 18,
                  ),
                  kHeight5,
                  TextWidget(
                    text: totalBalance,
                    color: kBluegrey,
                    fontSize: 32,
                  ),
                ],
              ),
              //* Down arrow button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: kWhite,
                        border: Border.all(color: kBluegrey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          kWidth10,
                          const TextWidget(
                            text: 'Montly',
                            color: kBluegrey,
                            fontSize: 12,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const LineIcon.angleDown(
                                color: kGrey,
                                size: 15,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          kHeight10,
          //* Graph
          BarGraph(),
        ],
      ),
    );
  }
}

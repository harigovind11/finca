import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';

import 'line_graph/line_graph_expense.dart';
import 'line_graph/line_graph_income.dart';

class GraphRowSectionWidget extends StatelessWidget {
  const GraphRowSectionWidget(
      {super.key, required this.totalIncome, required this.totalExpense});
  final String totalIncome;
  final String totalExpense;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 180,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Money Income',
                  color: kGreyShade,
                  fontSize: 18,
                ),
                kHeight5,
                TextWidget(
                  text: totalIncome,
                  color: kBluegrey,
                  fontSize: 25,
                ),
                LineGraphIncome(),
              ],
            ),
          ),
        ),
        kWidth20,
        Expanded(
          child: Container(
            height: 180,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Money Spend',
                  color: kGreyShade,
                  fontSize: 18,
                ),
                kHeight5,
                TextWidget(
                  text: totalExpense,
                  color: kBluegrey,
                  fontSize: 25,
                ),
                LineGraphExpense()
              ],
            ),
          ),
        )
      ],
    );
  }
}

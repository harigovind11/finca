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
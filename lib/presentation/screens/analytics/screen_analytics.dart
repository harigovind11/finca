import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/screens/analytics/widgets/line_graph/line_graph_expense.dart';

import 'package:finca/presentation/screens/home/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import 'widgets/bar_graph/bar_graph.dart';
import 'widgets/line_graph/line_graph_income.dart';

class AnalyticScreen extends StatelessWidget {
  const AnalyticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: kfincaPinkBg,
          elevation: 0,
          title: const TextWidget(
            text: 'Analytics',
            color: kWhite,
            fontSize: 28,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: LineIcon.bell(color: kWhite, size: 28),
            ),
            kWidth20
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: size.height * 0.70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kfincaPinkBg,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(25),
                bottomEnd: Radius.circular(25),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Column(
                children: [
                  InsideBox(),
                  kHeight20,
                  Section3(),
                ],
              ),
            ),
          ),
          const RecentTransaction(),
        ],
      ),
    );
  }
}

class InsideBox extends StatelessWidget {
  const InsideBox({super.key});

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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Transaction',
                    color: kGreyShade,
                    fontSize: 18,
                  ),
                  kHeight5,
                  TextWidget(
                    text: '₹13424.00',
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
                              icon: LineIcon.angleDown(
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

class Section3 extends StatelessWidget {
  const Section3({super.key});

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
                const TextWidget(
                  text: '₹13424.00',
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                const TextWidget(
                  text: '₹6342.00',
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

// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:finca/domain/models/category/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:finca/presentation/screens/main_page/widgets/bottom_nav.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/infrastructure/db/transaction/transaction_db.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

import 'subtitle_with_arrow_button.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({super.key});

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  @override
  void initState() {
    TransactionDb.instance.recentTransaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.815,
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
            titleColor: kBluegrey,
            onPressed: () {
              BottomNavPageChanger.instance.pageChanger(3);
            },
          ),
          kHeight5,
          ValueListenableBuilder(
            valueListenable: TransactionDb.instance.transactionListNotifier,
            builder: (
              BuildContext ctx,
              List<TransactionModel> newList,
              Widget? _,
            ) {
              return Expanded(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    final _value = newList[index];

                    return RecentTransactionWidget(
                      pupose: _value.purpose,
                      date: parseDate(_value.date),
                      amount: _value.amount,
                      title: (_value.type) == CategoryType.income
                          ? 'Receive'
                          : 'Expense',
                      icon: (_value.type) == CategoryType.income
                          ? LineIcons.arrowDown
                          : LineIcons.arrowUp,
                      iconColor: (_value.type) == CategoryType.income
                          ? kBlueShade
                          : kOrange,
                      backgroundColor: (_value.type) == CategoryType.income
                          ? kTeal
                          : kOrange.withOpacity(.7),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return kHeight10;
                  },
                  itemCount: newList.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  String parseDate(DateTime date) {
    final _date = DateFormat.MMMd().format(date);
    final _splitedDate = _date.split(' ');
    return '${_splitedDate.last}\t${_splitedDate.first}';
    // return '${date.day}\t${date.month}';
  }
}

class RecentTransactionWidget extends StatelessWidget {
  var parser = EmojiParser();
  final String title;
  final String pupose;
  final double amount;
  final String date;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  RecentTransactionWidget({
    Key? key,
    required this.title,
    required this.pupose,
    required this.amount,
    required this.date,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor
      // kBlueShade
      ,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: kWhite,
              radius: 20,
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
            kWidth15,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: title,
                  color: kOffWhite,
                  fontSize: 15,
                ),
                TextWidget(
                  text: pupose,
                  color: kBlack,
                  fontSize: 15,
                  overflow: TextOverflow.fade,
                ),
                TextWidget(
                  text: date,
                  color: kOffWhite,
                  fontSize: 15,
                ),
              ],
            ),
            const Spacer(),
            TextWidget(
              text: "₹ ${amount.toString()}",
              color: kBlack,
              fontSize: 15,
              overflow: TextOverflow.fade,
            ),
            kWidth10,
          ],
        ),
      ),
    );
  }
}

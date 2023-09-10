// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finca/domain/models/transaction_model.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:line_icons/line_icons.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transactionEntity,
    required this.type,
  }) : super(key: key);
  final TransactionEntity transactionEntity;
  final TransactionType type;
  @override
  Widget build(BuildContext context) {
    return RecentTransactionWidget(
      pupose: transactionEntity.purpose.getOrCrash(),
      date: parseDateMMMD(transactionEntity.date),
      amount: transactionEntity.amount.getOrCrash(),
      title: (transactionEntity.type) == TransactionType.income
          ? 'Receive'
          : 'Expense',
      icon: (transactionEntity.type) == TransactionType.income
          ? LineIcons.arrowDown
          : LineIcons.arrowUp,
      iconColor:
          (transactionEntity.type) == TransactionType.income ? kTeal : kOrange,
      backgroundColor: (transactionEntity.type) == TransactionType.income
          ? kTeal
          : kOrange.withOpacity(.7),
    );
  }
}

class RecentTransactionWidget extends StatelessWidget {
  final String title;
  final String pupose;
  final String amount;
  final String date;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  const RecentTransactionWidget({
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
                  text: '₹ $amount',
                  color: kOffWhite,
                  fontSize: 20,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
            const Spacer(),
            TextWidget(
              text: date,
              color: kOffWhite,
              fontSize: 15,
            ),
            kWidth10,
          ],
        ),
      ),
    );
  }
}

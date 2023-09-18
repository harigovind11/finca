// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finca/domain/transaction/transaction_type.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';

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
    );
  }
}

class RecentTransactionWidget extends StatelessWidget {
  final String title;
  final String pupose;
  final String amount;
  final String date;

  const RecentTransactionWidget({
    Key? key,
    required this.title,
    required this.pupose,
    required this.amount,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBluegrey,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: title,
                    color: kWhite,
                    fontSize: 20,
                  ),
                  TextWidget(
                    text: '₹ $amount',
                    color: kWhite,
                    fontSize: 20,
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
              kHeight10,
              TextWidget(
                text: pupose,
                color: kGrey,
                fontSize: 15,
                overflow: TextOverflow.fade,
              ),
              kHeight5,
              TextWidget(
                text: date,
                color: kGreyShade,
                fontSize: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

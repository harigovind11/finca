import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/db/transaction/transaction_db.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class IncomeCategoryListWidget extends StatelessWidget {
  const IncomeCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: TransactionDb.instance.incomeTransactionListNotifier,
        builder: (
          BuildContext ctx,
          List<TransactionModel> newList,
          Widget? _,
        ) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemBuilder: (ctx, index) {
                final _value = newList[index];

                return Slidable(
                  key: Key(_value.id!),
                  direction: Axis.horizontal,
                  startActionPane:
                      ActionPane(motion: const DrawerMotion(), children: [
                    SlidableAction(
                      onPressed: (context) {
                        TransactionDb.instance.deleteTransaction(_value.id!);
                      },
                      backgroundColor: kDeepBlush,
                      borderRadius: kRadius10,
                      icon: LineIcons.trash,
                      label: 'Delete',
                    ),
                  ]),
                  child: Card(
                    color: kViolet.withOpacity(.7),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      padding: const EdgeInsets.all(10.0),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 20,
                            child: Icon(
                              LineIcons.arrowDown,
                              color: kViolet,
                            ),
                          ),
                          kWidth15,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  text: 'Receive',
                                  color: kOffWhite,
                                  fontSize: 15,
                                ),
                                Flexible(
                                  child: TextWidget(
                                    text: _value.purpose,
                                    color: kBlack,
                                    fontSize: 18,
                                  ),
                                ),
                                TextWidget(
                                  text: parseDate(_value.date),
                                  color: kOffWhite,
                                  fontSize: 15,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            child: TextWidget(
                              text: '₹${_value.amount}',
                              color: kBlack,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return kHeight10;
              },
              itemCount: newList.length,
            ),
          );
        });
  }

  String parseDate(DateTime date) {
    final _date = DateFormat.MMMd().format(date);
    final _splitedDate = _date.split(' ');
    return '${_splitedDate.last}\t${_splitedDate.first}';
    // return '${date.day}\t${date.month}';
  }
}

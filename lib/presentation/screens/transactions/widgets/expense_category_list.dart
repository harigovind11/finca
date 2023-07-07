import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/db/transaction/transaction_db.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class ExpenseCategoryListWidget extends StatelessWidget {
  const ExpenseCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: TransactionDb.instance.expenseTransactionListNotifier,
        builder: (BuildContext ctx, List<TransactionModel> newList, Widget? _) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                final _value = newList[index];
                return Slidable(
                  key: Key(_value.id!),
                  direction: Axis.horizontal,
                  startActionPane: ActionPane(
                      motion: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: DrawerMotion(),
                      ),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            TransactionDb.instance
                                .deleteTransaction(_value.id!);
                          },
                          autoClose: true,
                          backgroundColor: kBluegrey,
                          borderRadius: kRadius10,
                          icon: LineIcons.trash,
                          label: 'Delete',
                        ),
                      ]),
                  child: Card(
                    color: kOrange.withOpacity(.7),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 100,
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
                              color: kOrange,
                            ),
                          ),
                          kWidth15,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextWidget(
                                text: 'Expense',
                                color: kOffWhite,
                                fontSize: 15,
                              ),
                              TextWidget(
                                text: _value.purpose,
                                color: kBlack,
                                fontSize: 15,
                                overflow: TextOverflow.fade,
                              ),
                              TextWidget(
                                text: parseDate(_value.date),
                                color: kOffWhite,
                                fontSize: 15,
                              ),
                              kHeight10,
                            ],
                          ),
                          const Spacer(),
                          TextWidget(
                            text: '₹ ${_value.amount}',
                            color: kBlack,
                            fontSize: 15,
                            overflow: TextOverflow.fade,
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

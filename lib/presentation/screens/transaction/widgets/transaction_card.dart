import 'package:auto_route/auto_route.dart';
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/transaction_model.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';

class TransactionCard extends StatelessWidget {
  final TransactionEntity transactionEntity;
  final TransactionType type;
  const TransactionCard({
    super.key,
    required this.transactionEntity,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Slidable(
          direction: Axis.horizontal,
          useTextDirection: false,
          startActionPane: ActionPane(
            motion: const Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: BehindMotion(),
            ),
            children: [
              SlidableAction(
                onPressed: (context) {
                  context
                      .read<TransactionActorBloc>()
                      .add(TransactionActorEvent.deleted(transactionEntity));
                },
                autoClose: true,
                backgroundColor: kBluegreyShade,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                icon: LineIcons.trash,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: (context) {
                  context.pushRoute(
                      AddTransactionRoute(transaction: transactionEntity));
                },
                autoClose: true,
                backgroundColor: kBlueShade,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                icon: LineIcons.pen,
                label: 'Edit',
              ),
            ],
          ),
          child: Card(
            color: kBluegrey,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: double.infinity,
              height: 120,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: type == TransactionType.income
                                ? 'Receive'
                                : 'Expense',
                            color: kWhite,
                            fontSize: 20,
                          ),
                          TextWidget(
                            text: '₹ ${transactionEntity.amount.getOrCrash()}',
                            color: kWhite,
                            fontSize: 20,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                      kHeight10,
                      TextWidget(
                        text: transactionEntity.purpose.getOrCrash(),
                        color: kGrey,
                        fontSize: 15,
                        overflow: TextOverflow.fade,
                      ),
                      kHeight5,
                      TextWidget(
                        text: parseDateMMMD(transactionEntity.date),
                        color: kGreyShade,
                        fontSize: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

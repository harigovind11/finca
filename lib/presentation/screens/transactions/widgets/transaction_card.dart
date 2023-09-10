import 'package:auto_route/auto_route.dart';
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/category_model.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';

class TransactionCard extends StatelessWidget {
  final TransactionEntity transactionEntity;
  final CategoryType type;
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
            color:
                type == CategoryType.income ? kTeal : kOrange.withOpacity(.7),
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
                      type == CategoryType.income
                          ? LineIcons.arrowDown
                          : LineIcons.arrowUp,
                      color: type == CategoryType.income ? kTeal : kOrange,
                    ),
                  ),
                  kWidth15,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text:
                            type == CategoryType.income ? 'Receive' : 'Expense',
                        color: kOffWhite,
                        fontSize: 15,
                      ),
                      TextWidget(
                        text: transactionEntity.purpose.getOrCrash(),
                        color: kBlack,
                        fontSize: 15,
                        overflow: TextOverflow.fade,
                      ),
                      TextWidget(
                        text: '₹ ${transactionEntity.amount.getOrCrash()}',
                        color: kOffWhite,
                        fontSize: 15,
                        overflow: TextOverflow.fade,
                      ),
                      kHeight10,
                    ],
                  ),
                  const Spacer(),
                  TextWidget(
                    text: parseDateMMMD(transactionEntity.date),
                    color: kOffWhite,
                    fontSize: 15,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

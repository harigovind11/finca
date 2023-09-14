import 'package:auto_route/auto_route.dart';
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/transaction/transaction_type.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

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
        child: FlipCard(
          front: Container(
            width: double.infinity,
            height: 135,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              border: Border(
                left: BorderSide(
                  color: kBluegreyShade,
                  width: 20.0,
                ),
                right: BorderSide(
                  color: kBluegreyShade,
                  width: 10.0,
                ),
                top: BorderSide(
                  color: kBlack,
                  width: 15.0,
                ),
                bottom: BorderSide(
                  color: kBlack,
                  width: 10.0,
                ),
              ),
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
          back: Container(
            width: double.infinity,
            height: 135,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              border: Border(
                left: BorderSide(
                  color: kBluegreyShade,
                  width: 20.0,
                ),
                right: BorderSide(
                  color: kBluegreyShade,
                  width: 10.0,
                ),
                top: BorderSide(
                  color: kBlack,
                  width: 15.0,
                ),
                bottom: BorderSide(
                  color: kBlack,
                  width: 10.0,
                ),
              ),
              color: kBluegrey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      context.pushRoute(
                        AddTransactionRoute(transaction: transactionEntity),
                      );
                    },
                    style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory),
                    icon: const LineIcon.pen(
                      color: kBlueShade,
                    ),
                    label: const TextWidget(
                      text: 'Edit',
                      color: kBlueShade,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      showTopSnackBar(
                        Overlay.of(context),
                        const CustomSnackBar.success(
                          backgroundColor: kBlueShade,
                          message: 'Deleted',
                        ),
                      );
                      context.read<TransactionActorBloc>().add(
                          TransactionActorEvent.deleted(transactionEntity));
                    },
                    style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory),
                    icon: const LineIcon.trash(
                      color: kRed,
                    ),
                    label: const TextWidget(
                      text: 'Delete',
                      color: kRed,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

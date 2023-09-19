import 'package:auto_route/auto_route.dart';
import 'package:finca/application/bill/bill_actor/bill_actor_bloc.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';

class BillCard extends StatelessWidget {
  final BillEntity billEntity;
  final BillType type;
  const BillCard({
    super.key,
    required this.billEntity,
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
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              border: Border(
                left: BorderSide(
                  color: type == BillType.bill ? kBlue : kDeepBlush,
                  width: 20.0,
                ),
                right: const BorderSide(
                  color: kBluegreyShade,
                  width: 10.0,
                ),
                top: const BorderSide(
                  color: kBlack,
                  width: 15.0,
                ),
                bottom: const BorderSide(
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
                          text: type == BillType.bill ? 'Bill' : 'Subscription',
                          color: kWhite,
                          fontSize: 20,
                        ),
                        TextWidget(
                          text: '₹ ${billEntity.billAmount.getOrCrash()}',
                          color: kWhite,
                          fontSize: 20,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                    kHeight10,
                    TextWidget(
                      text: billEntity.billName.getOrCrash(),
                      color: kGrey,
                      fontSize: 15,
                      overflow: TextOverflow.fade,
                    ),
                    kHeight5,
                    TextWidget(
                      text: parseDateMMMD(billEntity.date),
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
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              border: Border(
                left: const BorderSide(
                  color: kBluegreyShade,
                  width: 10.0,
                ),
                right: BorderSide(
                  color: type == BillType.bill ? kBlue : kDeepBlush,
                  width: 20.0,
                ),
                top: const BorderSide(
                  color: kBlack,
                  width: 15.0,
                ),
                bottom: const BorderSide(
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
                        AddBillRoute(billEntity: billEntity),
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
                      context
                          .read<BillActorBloc>()
                          .add(BillActorEvent.deleted(billEntity));
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

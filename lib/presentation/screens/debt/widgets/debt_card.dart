import 'package:auto_route/auto_route.dart';
import 'package:finca/application/debt/debt_actor/debt_actor_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/models/debt_model.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class DebtCard extends StatelessWidget {
  final DebtEntity debtEntity;
  final DebtType type;
  const DebtCard({
    super.key,
    required this.debtEntity,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.success(
                      backgroundColor: kBlueShade,
                      message: 'Deleted',
                    ),
                  );

                  context
                      .read<DebtActorBloc>()
                      .add(DebtActorEvent.deleted(debtEntity));
                },
                autoClose: true,
                backgroundColor: kBluegreyShade,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                icon: LineIcons.trash,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: (context) {
                  context.pushRoute(AddDebtRoute(debt: debtEntity));
                },
                autoClose: true,
                backgroundColor: kBlueShade,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                icon: LineIcons.pen,
                label: 'Edit',
              ),
            ],
          ),
          child: Container(
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: kBluegreyShade),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: type == DebtType.debt ? 'Debt' : 'Credit',
                      color: kWhite,
                      fontSize: 20,
                    ),
                    TextWidget(
                      text: '₹ ${debtEntity.amount.getOrCrash()}',
                      color: kBlueShade,
                      fontSize: 20,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
                kHeight5,
                TextWidget(
                  text: 'Name : ${debtEntity.name.getOrCrash()}',
                  color: kGrey,
                  fontSize: 15,
                  overflow: TextOverflow.fade,
                ),
                kHeight5,
                TextWidget(
                  text: 'Description : ${debtEntity.description.getOrCrash()}',
                  color: kGreyShade,
                  fontSize: 15,
                  overflow: TextOverflow.fade,
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Start : ${parseDateMMMD(debtEntity.startDate)}',
                      color: kGreen,
                      fontSize: 15,
                    ),
                    TextWidget(
                      text: 'End : ${parseDateMMMD(debtEntity.endDate)}',
                      color: kRed,
                      fontSize: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:finca/application/account/account_actor/account_actor_bloc.dart';
import 'package:finca/domain/account/account.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';

import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';

class AccountCard extends StatelessWidget {
  final AccountEntity accountEntity;
  const AccountCard({super.key, required this.accountEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: FlipCard(
        front: Container(
          width: double.infinity,
          height: 160,
          padding: const EdgeInsets.only(left: 20, right: 12, top: 5),
          decoration: const BoxDecoration(
            color: kBluegrey,
            border: Border(
              left: BorderSide(
                color: kBlueShade,
                width: 20.0,
              ),
              right: BorderSide(
                color: kBlack,
                width: 10.0,
              ),
              top: BorderSide(
                color: kBluegreyShade,
                width: 15.0,
              ),
              bottom: BorderSide(
                color: kBluegreyShade,
                width: 10.0,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              TextWidget(
                text: accountEntity.accountName.getOrCrash(),
                color: kGreyShade,
                fontSize: 20,
              ),
              kHeight20,
              TextWidget(
                text: '₹ ${accountEntity.accountBalance.getOrCrash()}',
                color: kBlueShade,
                fontSize: 25,
              ),
            ],
          ),
        ),
        back: Container(
          width: double.infinity,
          height: 160,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          decoration: const BoxDecoration(
            color: kBluegrey,
            border: Border(
              left: BorderSide(
                color: kBlack,
                width: 10.0,
              ),
              right: BorderSide(
                color: kBlueShade,
                width: 20.0,
              ),
              top: BorderSide(
                color: kBluegreyShade,
                width: 15.0,
              ),
              bottom: BorderSide(
                color: kBluegreyShade,
                width: 10.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    context.pushRoute(
                      AddAccountRoute(accountEntity: accountEntity),
                    );
                  },
                  style:
                      const ButtonStyle(splashFactory: NoSplash.splashFactory),
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
                    context.read<AccountActorBloc>().add(
                          AccountActorEvent.deleted(accountEntity),
                        );
                  },
                  style:
                      const ButtonStyle(splashFactory: NoSplash.splashFactory),
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
      ),
    );
  }
}

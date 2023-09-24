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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: FlipCard(
        front: Container(
          width: double.infinity,
          height: 160,
          padding: const EdgeInsets.only(
            left: 25,
            right: 12,
            top: 10,
          ),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: kRadius20,
            image: const DecorationImage(
              image: AssetImage('images/account.jpg'),
              alignment: Alignment.centerRight,
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              Text(
                accountEntity.accountName.getOrCrash(),
                style: kTextStyle,
              ),
              kHeight20,
              Text(
                '₹ ${accountEntity.accountBalance.getOrCrash()}',
                style: kTextStyle.copyWith(
                  color: kBlack,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        back: Container(
          width: double.infinity,
          height: 160,
          padding: const EdgeInsets.only(
            left: 25,
            right: 12,
            top: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: kRadius20,
            image: const DecorationImage(
              opacity: .7,
              image: AssetImage('images/account.jpg'),
              fit: BoxFit.cover,
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
                    color: kBluegrey,
                  ),
                  label: Text(
                    'Edit',
                    style: kTextStyle.copyWith(
                      color: kBlack,
                      fontSize: 15,
                    ),
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
                    color: kBlack,
                  ),
                  label: Text(
                    'Delete',
                    style: kTextStyle.copyWith(
                      color: kBlack,
                      fontSize: 15,
                    ),
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

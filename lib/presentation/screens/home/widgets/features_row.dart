import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FeaturesRow extends StatelessWidget {
  const FeaturesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: kWhite,
        color: kBlueShade,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: kWhite,
                child: IconButton(
                  color: kBluegrey,
                  onPressed: () {
                    AutoRouter.of(context).push(
                      const AccountRoute(),
                    );
                  },
                  icon: const Icon(
                    LineIcons.wallet,
                  ),
                ),
              ),
              kHeight5,
              const TextWidget(
                  text: 'Accounts', color: kBluegreyShade, fontSize: 12),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: kWhite,
                child: IconButton(
                  color: kBluegrey,
                  onPressed: () {
                    AutoRouter.of(context).push(
                      const BillRoute(),
                    );
                  },
                  icon: const Icon(
                    LineIcons.fileInvoiceWithUsDollar,
                  ),
                ),
              ),
              kHeight5,
              const TextWidget(
                  text: 'Bills', color: kBluegreyShade, fontSize: 12),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: kWhite,
                child: IconButton(
                  color: kBluegrey,
                  onPressed: () {
                    AutoRouter.of(context).push(
                      const SavingPlanRoute(),
                    );
                  },
                  icon: const Icon(
                    LineIcons.piggyBank,
                  ),
                ),
              ),
              kHeight5,
              const TextWidget(
                  text: 'Savings', color: kBluegreyShade, fontSize: 12),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: kWhite,
                child: IconButton(
                  color: kBluegrey,
                  onPressed: () {},
                  icon: const Icon(
                    LineIcons.icons,
                  ),
                ),
              ),
              kHeight5,
              const TextWidget(
                  text: 'Categories', color: kBluegreyShade, fontSize: 12),
            ],
          ),
        ],
      ),
    );
  }
}

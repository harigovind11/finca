import 'package:auto_route/auto_route.dart';
import 'package:finca/application/saving_plan/saving_plan_actor/saving_plan_actor_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SavingPlanCard extends StatelessWidget {
  final SavingPlanEntity savingPlanEntity;
  const SavingPlanCard({super.key, required this.savingPlanEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: FlipCard(
        front: Card(
          color: kBluegreyShade,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                width: 190,
                height: 190,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kHeight20,
                    TextWidget(
                      text: savingPlanEntity.planName.getOrCrash(),
                      color: kWhite,
                      fontSize: 25,
                    ),
                    kHeight15,
                    TextWidget(
                      text: '₹ ${savingPlanEntity.goalAmount.getOrCrash()}',
                      color: kBlueShade,
                      fontSize: 22,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        back: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kBluegreyShade,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: IconButton(
                      icon: const Icon(
                        LineIcons.trash,
                        color: kWhite,
                      ),
                      onPressed: () {
                        showTopSnackBar(
                          Overlay.of(context),
                          const CustomSnackBar.success(
                            backgroundColor: kBlueShade,
                            message: 'Deleted',
                          ),
                        );
                        context.read<SavingPlanActorBloc>().add(
                              SavingPlanActorEvent.deleted(savingPlanEntity),
                            );
                      }),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kBlueShade,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Positioned.fill(
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        LineIcons.pen,
                        color: kWhite,
                      ),
                      onPressed: () {
                        context.pushRoute(
                          AddSavingPlanRoute(
                              savingPlanEntity: savingPlanEntity),
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

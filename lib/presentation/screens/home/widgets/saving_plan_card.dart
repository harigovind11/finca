import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:flutter/material.dart';

class SavingPlanCard extends StatelessWidget {
  final SavingPlanEntity savingPlanEntity;
  const SavingPlanCard({super.key, required this.savingPlanEntity});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBluegreyShade,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 190,
            height: 190,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
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
          ),
        ],
      ),
    );
  }
}

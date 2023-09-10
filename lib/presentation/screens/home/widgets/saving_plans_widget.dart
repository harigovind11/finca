import 'package:finca/domain/models/saving_plans_model.dart';
import 'package:finca/infrastructure/hive/saving_plans_db.dart';
import 'package:finca/presentation/screens/saving_plans/widgets/savings_plan_scrolling_widget.dart';
import 'package:flutter/material.dart';

class SavingPlansWidget extends StatelessWidget {
  const SavingPlansWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 275,
      child: LimitedBox(
        maxHeight: 180,
        maxWidth: size.width,
        child: ValueListenableBuilder(
            valueListenable: SavingPlansDb.instance.savingPlansValueNotifier,
            builder:
                (BuildContext ctx, List<SavingPlansModel> newList, Widget? _) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(newList.length, (index) {
                  final _value = newList[index];
                  return SavingPlansScrollingWidget.homeScreen(
                    planName: _value.planName,
                    goalAmount: _value.goalAmount,
                  );
                }),
              );
            }),
      ),
    );
  }
}

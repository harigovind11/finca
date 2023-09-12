import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:flutter/material.dart';

class SavingPlanErrorCard extends StatelessWidget {
  final SavingPlanEntity savingPlanEntity;

  const SavingPlanErrorCard({
    Key? key,
    required this.savingPlanEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid transaction, please, contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details:',
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            Text(
              savingPlanEntity.failureOption
                  .fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

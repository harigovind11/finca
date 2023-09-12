import 'package:finca/domain/debt/debt.dart';
import 'package:flutter/material.dart';

class DebtErrorCard extends StatelessWidget {
  final DebtEntity debtEntity;

  const DebtErrorCard({
    Key? key,
    required this.debtEntity,
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
              debtEntity.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

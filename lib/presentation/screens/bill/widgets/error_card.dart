import 'package:finca/domain/bill/bill.dart';

import 'package:flutter/material.dart';

class BillErrorCard extends StatelessWidget {
  final BillEntity billEntity;

  const BillErrorCard({
    Key? key,
    required this.billEntity,
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
              billEntity.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

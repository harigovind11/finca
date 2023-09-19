import 'package:finca/domain/account/account.dart';
import 'package:flutter/material.dart';

class AccountErrorCard extends StatelessWidget {
  final AccountEntity accountEntity;

  const AccountErrorCard({
    Key? key,
    required this.accountEntity,
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
              'Invalid information, please, contact support',
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
              accountEntity.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:finca/application/account/account_watcher/account_watcher_bloc.dart';
import 'package:finca/presentation/screens/account/widgets/account_card.dart';
import 'account_error_card.dart';
import 'critical_failure_display_widget.dart';

class AccountListWidget extends StatelessWidget {
  const AccountListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherBloc, AccountWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final accountEntity = state.accounts[index];
                  if (accountEntity.failureOption.isSome()) {
                    return AccountErrorCard(accountEntity: accountEntity);
                  } else {
                    return AccountCard(
                      accountEntity: accountEntity,
                    );
                  }
                },
                itemCount: state.accounts.length,
              );
            },
            loadFailure: (state) => CriticalFailureDisplay(
                  failure: state.firestoreFailure,
                ));
      },
    );
  }
}

import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/domain/models/transaction_model.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/transactions/widgets/error_card.dart';
import 'package:finca/presentation/screens/transactions/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'critical_failure_display_widget.dart';

class IncomeCategoryListWidget extends StatelessWidget {
  const IncomeCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TransactionWatcherBloc>()
        ..add(const TransactionWatcherEvent.watchIncomeTransactionStarted()),
      child: BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loadSucess: (state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final transactionEntity = state.transactions[index];
                    if (transactionEntity.failureOption.isSome()) {
                      return ErrorCard(transactionEntity: transactionEntity);
                    } else {
                      return TransactionCard(
                          transactionEntity: transactionEntity,
                          type: TransactionType.income);
                    }
                  },
                  itemCount: state.transactions.length,
                );
              },
              loadFailure: (state) => CriticalFailureDisplay(
                    failure: state.firestoreFailure,
                  ));
        },
      ),
    );
  }
}

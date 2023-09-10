import 'package:finca/domain/models/category_model.dart';
import 'package:finca/presentation/screens/transactions/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'transaction_card.dart';
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/presentation/screens/transactions/widgets/error_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSucess: (state) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final transactionEntity = state.transactions[index];
                  if (transactionEntity.failureOption.isSome()) {
                    return ErrorCard(transactionEntity: transactionEntity);
                  } else {
                    return TransactionCard(
                        transactionEntity: transactionEntity,
                        type: CategoryType.income);
                  }
                },
                itemCount: state.transactions.length,
              );
            },
            loadFailure: (state) => CriticalFailureDisplay(
                  failure: state.transactionFailure,
                ));
      },
    );
  }
}

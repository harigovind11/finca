import 'package:finca/core/constants.dart';
import 'package:finca/domain/transaction/transaction_type.dart';
import 'package:finca/presentation/screens/home/widgets/transaction_loading.dart';
import 'package:finca/presentation/screens/transaction/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'transaction_card.dart';
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/presentation/screens/transaction/widgets/error_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const TransactionLoadingWidget(),
            loadSucess: (state) {
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final transactionEntity = state.transactions[index];
                  if (transactionEntity.failureOption.isSome()) {
                    return TransactionErrorCard(
                        transactionEntity: transactionEntity);
                  } else {
                    return TransactionCard(
                        transactionEntity: transactionEntity,
                        type: TransactionType.income);
                  }
                },
                separatorBuilder: (_, __) => kHeight10,
                itemCount: state.transactions.length,
              );
            },
            loadFailure: (state) => CriticalFailureDisplay(
                  failure: state.firestoreFailure,
                ));
      },
    );
  }
}

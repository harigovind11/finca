import 'package:finca/application/debt/debt_watcher/debt_watcher_bloc.dart';
import 'package:finca/domain/models/debt_model.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/debt/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'debt_card.dart';
import 'error_card.dart';

class CreditCategoryList extends StatelessWidget {
  const CreditCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DebtWatcherBloc>()
        ..add(const DebtWatcherEvent.watchCreditStarted()),
      child: BlocBuilder<DebtWatcherBloc, DebtWatcherState>(
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
                    final debtEntity = state.debts[index];
                    if (debtEntity.failureOption.isSome()) {
                      return DebtErrorCard(debtEntity: debtEntity);
                    } else {
                      return DebtCard(
                          debtEntity: debtEntity, type: DebtType.credit);
                    }
                  },
                  itemCount: state.debts.length,
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

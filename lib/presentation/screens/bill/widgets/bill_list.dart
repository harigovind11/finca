import 'package:finca/application/bill/bill_watcher/bill_watcher_bloc.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:finca/presentation/screens/bill/widgets/bill_card.dart';
import 'package:finca/presentation/screens/bill/widgets/bill_loading.dart';
import 'package:finca/presentation/screens/bill/widgets/error_card.dart';
import 'package:finca/presentation/screens/transaction/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:finca/injectable.dart';

class BillListWidget extends StatelessWidget {
  const BillListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BillWatcherBloc>()
        ..add(const BillWatcherEvent.watchBillStarted()),
      child: BlocBuilder<BillWatcherBloc, BillWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const BillLoadingWidget(),
              loadSucess: (state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final billEntity = state.bills[index];
                    if (billEntity.failureOption.isSome()) {
                      return BillErrorCard(billEntity: billEntity);
                    } else {
                      return BillCard(
                          billEntity: billEntity, type: BillType.bill);
                    }
                  },
                  itemCount: state.bills.length,
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

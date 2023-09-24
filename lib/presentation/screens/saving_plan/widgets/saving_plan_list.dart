import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'critical_failure_display_widget.dart';
import 'error_card.dart';
import 'saving_plan_card.dart';

class SavingPlanListWidget extends StatelessWidget {
  const SavingPlanListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavingPlanWatcherBloc, SavingPlanWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSucess: (state) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / .9,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final savingPlanEntity = state.savingPlans[index];
                  if (savingPlanEntity.failureOption.isSome()) {
                    return SavingPlanErrorCard(
                        savingPlanEntity: savingPlanEntity);
                  } else {
                    return SavingPlanCard(
                      savingPlanEntity: savingPlanEntity,
                    );
                  }
                },
                itemCount: state.savingPlans.length,
              );
            },
            loadFailure: (state) => CriticalFailureDisplay(
                  failure: state.firestoreFailure,
                ));
      },
    );
  }
}

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'saving_plan_watcher_event.dart';
part 'saving_plan_watcher_state.dart';
part 'saving_plan_watcher_bloc.freezed.dart';

@injectable
class SavingPlanWatcherBloc
    extends Bloc<SavingPlanWatcherEvent, SavingPlanWatcherState> {
  final ISavingPlanRepository _iSavingPlanRepository;
  StreamSubscription<Either<FirestoreFailure, List<SavingPlanEntity>>>?
      _savingPlanStreamSubscription;
  SavingPlanWatcherBloc(this._iSavingPlanRepository) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const SavingPlanWatcherState.loadInProgress());
      await _savingPlanStreamSubscription?.cancel();
      _savingPlanStreamSubscription = _iSavingPlanRepository.watchAll().listen(
            (failureOrSavingPlans) => add(
              SavingPlanWatcherEvent.savingPlanReceived(failureOrSavingPlans),
            ),
          );
    });
    on<_SavingPlanReceived>((event, emit) {
      emit(
        event.failureOrSavingPlans.fold(
          (f) => SavingPlanWatcherState.loadFailure(f),
          (savingPlans) => SavingPlanWatcherState.loadSucess(savingPlans),
        ),
      );
    });
  }
}

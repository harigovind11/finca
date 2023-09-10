part of 'saving_plan_watcher_bloc.dart';

@freezed
class SavingPlanWatcherState with _$SavingPlanWatcherState {
  const factory SavingPlanWatcherState.initial() = _Initial;

  const factory SavingPlanWatcherState.loadInProgress() = _LoadInProgress;
  const factory SavingPlanWatcherState.loadSucess(
    List<SavingPlanEntity> savingPlans,
  ) = _LoadSucess;
  const factory SavingPlanWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

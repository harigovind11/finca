part of 'saving_plan_watcher_bloc.dart';

@freezed
class SavingPlanWatcherEvent with _$SavingPlanWatcherEvent {
  const factory SavingPlanWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory SavingPlanWatcherEvent.savingPlanReceived(
      Either<FirestoreFailure, List<SavingPlanEntity>>
          failureOrSavingPlans) = _SavingPlanReceived;
}

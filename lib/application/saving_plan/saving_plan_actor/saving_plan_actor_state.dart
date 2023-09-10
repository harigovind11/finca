part of 'saving_plan_actor_bloc.dart';

@freezed
class SavingPlanActorState with _$SavingPlanActorState {
  const factory SavingPlanActorState.initial() = _Initial;
  const factory SavingPlanActorState.actionInProgress() = _ActionInProgress;
  const factory SavingPlanActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory SavingPlanActorState.deleteSucess() = _DeleteSucess;
}

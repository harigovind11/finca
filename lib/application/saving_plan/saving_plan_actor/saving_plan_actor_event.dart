part of 'saving_plan_actor_bloc.dart';

@freezed
class SavingPlanActorEvent with _$SavingPlanActorEvent {
  const factory SavingPlanActorEvent.deleted(
      SavingPlanEntity savingPlanEntity) = _Deleted;
}

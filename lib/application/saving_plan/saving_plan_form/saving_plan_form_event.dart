part of 'saving_plan_form_bloc.dart';

@freezed
class SavingPlanFormEvent with _$SavingPlanFormEvent {
  const factory SavingPlanFormEvent.initialized(
      Option<SavingPlanEntity> initialOption) = _Initialized;
  const factory SavingPlanFormEvent.goalAmountChanged(String goalAmountStr) =
      _GoalAmountChanged;
  const factory SavingPlanFormEvent.planNameChanged(String planNameStr) =
      _PlanNameChanged;

  const factory SavingPlanFormEvent.saved() = _Saved;
}

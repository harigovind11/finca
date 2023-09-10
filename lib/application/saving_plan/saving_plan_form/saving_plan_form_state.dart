part of 'saving_plan_form_bloc.dart';

@freezed
class SavingPlanFormState with _$SavingPlanFormState {
  const factory SavingPlanFormState({
    required SavingPlanEntity savingPlanEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _SavingPlanFormState;

  factory SavingPlanFormState.initial() => SavingPlanFormState(
      savingPlanEntity: SavingPlanEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

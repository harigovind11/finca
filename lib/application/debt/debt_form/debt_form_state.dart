part of 'debt_form_bloc.dart';

@freezed
class DebtFormState with _$DebtFormState {
  const factory DebtFormState({
    required DebtEntity debtEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _DebtFormState;

  factory DebtFormState.initial() => DebtFormState(
      debtEntity: DebtEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

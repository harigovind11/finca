part of 'bill_form_bloc.dart';

@freezed
class BillFormState with _$BillFormState {
  const factory BillFormState({
    required BillEntity billEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _BillFormState;

  factory BillFormState.initial() => BillFormState(
      billEntity: BillEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

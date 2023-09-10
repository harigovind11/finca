part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required TransactionEntity transactionEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
      transactionEntity: TransactionEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

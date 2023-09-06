part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required TransactionCard transaction,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<TransactionFailure, Unit>> saveFailureOrSucessOption,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
      transaction: TransactionCard.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

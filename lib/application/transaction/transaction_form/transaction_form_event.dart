part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialized(
      Option<TransactionCard> initialNoteOption) = _Initialized;
  const factory TransactionFormEvent.amountChanged(double amountValue) =
      _AmountChanged;
  const factory TransactionFormEvent.purposeChanged(String purposeStr) =
      _PurposeChanged;
  const factory TransactionFormEvent.dateChanged(DateTime dateTime) =
      _DateChanged;
  const factory TransactionFormEvent.typeChanged(CategoryType categoryType) =
      _TypeChanged;
  const factory TransactionFormEvent.saved() = _Saved;
}

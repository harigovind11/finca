part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialized(
      Option<TransactionEntity> initialOption) = _Initialized;
  const factory TransactionFormEvent.amountChanged(String amountStr) =
      _AmountChanged;
  const factory TransactionFormEvent.purposeChanged(String purposeStr) =
      _PurposeChanged;
  const factory TransactionFormEvent.dateChanged(DateTime dateTime) =
      _DateChanged;
  const factory TransactionFormEvent.typeChanged(
      TransactionType transactionType) = _TypeChanged;

  const factory TransactionFormEvent.accountSelected(String selectedAccount) =
      _AccountSelected;
  const factory TransactionFormEvent.categorySelected(String selectedCategory) =
      _CategorySelected;
  const factory TransactionFormEvent.saved() = _Saved;
}

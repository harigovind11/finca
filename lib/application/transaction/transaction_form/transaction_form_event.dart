part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialized(
      Option<TransactionEntity> initialOption) = Initialized;
  const factory TransactionFormEvent.amountChanged(String amountStr) =
      AmountChanged;
  const factory TransactionFormEvent.purposeChanged(String purposeStr) =
      PurposeChanged;
  const factory TransactionFormEvent.dateChanged(DateTime dateTime) =
      DateChanged;
  const factory TransactionFormEvent.typeChanged(
      TransactionType transactionType) = TypeChanged;

  const factory TransactionFormEvent.accountSelected(String selectedAccount) =
      AccountSelected;
  const factory TransactionFormEvent.categorySelected(String selectedCategory) =
      CategorySelected;
  const factory TransactionFormEvent.saved() = Saved;
}

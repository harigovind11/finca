part of 'debt_form_bloc.dart';

@freezed
class DebtFormEvent with _$DebtFormEvent {
  const factory DebtFormEvent.initialized(
      Option<DebtEntity> initialNoteOption) = _Initialized;
  const factory DebtFormEvent.amountChanged(String amountStr) = _AmountChanged;
  const factory DebtFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory DebtFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;
  const factory DebtFormEvent.startDateChanged(DateTime startDate) =
      _StartDateChanged;
  const factory DebtFormEvent.endDateChanged(DateTime endDate) =
      _EndDateChanged;
  const factory DebtFormEvent.typeChanged(DebtType debtType) = _TypeChanged;
  const factory DebtFormEvent.saved() = _Saved;
}

part of 'bill_form_bloc.dart';

@freezed
class BillFormEvent with _$BillFormEvent {
  const factory BillFormEvent.initialized(Option<BillEntity> initialOption) =
      _Initialized;
  const factory BillFormEvent.billAmountChanged(String billAmountStr) =
      _BillAmountChanged;
  const factory BillFormEvent.billNameChanged(String billNameStr) =
      _BillNameChanged;
  const factory BillFormEvent.dateChanged(DateTime dateTime) = _DateChanged;
  const factory BillFormEvent.billTypeChanged(BillType billType) =
      _BillTypeChanged;
  const factory BillFormEvent.saved() = _Saved;
}

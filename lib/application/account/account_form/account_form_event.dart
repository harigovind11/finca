part of 'account_form_bloc.dart';

@freezed
class AccountFormEvent with _$AccountFormEvent {
  const factory AccountFormEvent.initialized(
      Option<AccountEntity> initialOption) = _Initialized;
  const factory AccountFormEvent.accountNameChanged(String accountNameStr) =
      _AccountNameChanged;
  const factory AccountFormEvent.accountBalanceChanged(
      String accountBalanceStr) = _AccountBalanceChanged;

  const factory AccountFormEvent.saved() = _Saved;
}

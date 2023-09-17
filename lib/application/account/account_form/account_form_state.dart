part of 'account_form_bloc.dart';

@freezed
class AccountFormState with _$AccountFormState {
  const factory AccountFormState({
    required AccountEntity accountEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _AccountFormState;

  factory AccountFormState.initial() => AccountFormState(
      accountEntity: AccountEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

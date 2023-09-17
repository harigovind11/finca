part of 'account_actor_bloc.dart';

@freezed
class AccountActorEvent with _$AccountActorEvent {
  const factory AccountActorEvent.deleted(AccountEntity accountEntity) =
      _Deleted;
}

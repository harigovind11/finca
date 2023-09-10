part of 'debt_actor_bloc.dart';

@freezed
class DebtActorEvent with _$DebtActorEvent {
  const factory DebtActorEvent.deleted(DebtEntity debtEntity) = _Deleted;
}

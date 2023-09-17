part of 'bill_actor_bloc.dart';

@freezed
class BillActorEvent with _$BillActorEvent {
  const factory BillActorEvent.deleted(BillEntity billEntity) = _Deleted;
}

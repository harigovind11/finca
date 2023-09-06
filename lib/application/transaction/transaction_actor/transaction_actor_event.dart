part of 'transaction_actor_bloc.dart';

@freezed
class TransactionActorEvent with _$TransactionActorEvent {
  const factory TransactionActorEvent.deleted(TransactionCard transaction) =
      _Deleted;
}

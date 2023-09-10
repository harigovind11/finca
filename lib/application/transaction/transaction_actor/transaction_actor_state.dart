part of 'transaction_actor_bloc.dart';

@freezed
class TransactionActorState with _$TransactionActorState {
  const factory TransactionActorState.initial() = _Initial;
  const factory TransactionActorState.actionInProgress() = _ActionInProgress;
  const factory TransactionActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory TransactionActorState.deleteSucess() = _DeleteSucess;
}

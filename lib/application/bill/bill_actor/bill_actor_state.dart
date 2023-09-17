part of 'bill_actor_bloc.dart';

@freezed
class BillActorState with _$BillActorState {
  const factory BillActorState.initial() = _Initial;
  const factory BillActorState.actionInProgress() = _ActionInProgress;
  const factory BillActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory BillActorState.deleteSucess() = _DeleteSucess;
}

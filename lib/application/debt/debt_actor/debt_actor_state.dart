part of 'debt_actor_bloc.dart';

@freezed
class DebtActorState with _$DebtActorState {
  const factory DebtActorState.initial() = _Initial;
  const factory DebtActorState.actionInProgress() = _ActionInProgress;
  const factory DebtActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory DebtActorState.deleteSucess() = _DeleteSucess;
}

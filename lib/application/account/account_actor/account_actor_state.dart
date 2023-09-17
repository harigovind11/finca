part of 'account_actor_bloc.dart';

@freezed
class AccountActorState with _$AccountActorState {
  const factory AccountActorState.initial() = _Initial;
  const factory AccountActorState.actionInProgress() = _ActionInProgress;
  const factory AccountActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory AccountActorState.deleteSucess() = _DeleteSucess;
}

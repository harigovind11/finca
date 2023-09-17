part of 'catergory_actor_bloc.dart';

@freezed
class CatergoryActorState with _$CatergoryActorState {
  const factory CatergoryActorState.initial() = _Initial;
  const factory CatergoryActorState.actionInProgress() = _ActionInProgress;
  const factory CatergoryActorState.deleteFailure(
      FirestoreFailure firestoreFailure) = _DeleteFailure;
  const factory CatergoryActorState.deleteSucess() = _DeleteSucess;
}

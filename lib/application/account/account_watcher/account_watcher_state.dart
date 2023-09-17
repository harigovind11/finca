part of 'account_watcher_bloc.dart';

@freezed
class AccountWatcherState with _$AccountWatcherState {
  const factory AccountWatcherState.initial() = _Initial;

  const factory AccountWatcherState.loadInProgress() = _LoadInProgress;
  const factory AccountWatcherState.loadSucess(
    List<AccountEntity> accounts,
  ) = _LoadSucess;
  const factory AccountWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

part of 'account_watcher_bloc.dart';

@freezed
class AccountWatcherEvent with _$AccountWatcherEvent {
  const factory AccountWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory AccountWatcherEvent.accountReceived(
          Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts) =
      _AccountReceived;
}

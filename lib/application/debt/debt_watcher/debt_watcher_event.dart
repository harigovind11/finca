part of 'debt_watcher_bloc.dart';

@freezed
class DebtWatcherEvent with _$DebtWatcherEvent {
  const factory DebtWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory DebtWatcherEvent.watchDebtStarted() = _WatchDebtStarted;
  const factory DebtWatcherEvent.watchCreditStarted() = _WatchCreditStarted;
  const factory DebtWatcherEvent.transactionReceived(
          Either<FirestoreFailure, List<DebtEntity>> failureOrDebts) =
      _TransactionReceived;
}

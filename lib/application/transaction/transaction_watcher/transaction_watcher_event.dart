part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherEvent with _$TransactionWatcherEvent {
  const factory TransactionWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory TransactionWatcherEvent.transactionReceived(
      Either<TransactionFailure, KtList<TransactionCard>>
          failureOrTransactions) = _TransactionReceived;
}

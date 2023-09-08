part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherEvent with _$TransactionWatcherEvent {
  const factory TransactionWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TransactionWatcherEvent.watchIncomeTransactionStarted() =
      _WatchIncomeTransactionStarted;
  const factory TransactionWatcherEvent.watchExpenseTransactionStarted() =
      _WatchExpenseTransactionStarted;
  const factory TransactionWatcherEvent.transactionReceived(
      Either<TransactionFailure, List<TransactionEntity>>
          failureOrTransactions) = _TransactionReceived;
}

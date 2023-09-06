part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherState with _$TransactionWatcherState {
  const factory TransactionWatcherState.initial() = _Initial;

  const factory TransactionWatcherState.loadInProgress() = _LoadInProgress;
  const factory TransactionWatcherState.loadSucess(
      KtList<TransactionCard> transactions) = _LoadSucess;
  const factory TransactionWatcherState.loadFailure(
      TransactionFailure transactionFailure) = _LoadFailure;
}

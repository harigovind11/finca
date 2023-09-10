part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherState with _$TransactionWatcherState {
  const factory TransactionWatcherState.initial() = _Initial;

  const factory TransactionWatcherState.loadInProgress() = _LoadInProgress;
  const factory TransactionWatcherState.loadSucess(
    List<TransactionEntity> transactions,
    double totalBalance,
    double totalIncome,
    double totalExpense,
  ) = _LoadSucess;
  const factory TransactionWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

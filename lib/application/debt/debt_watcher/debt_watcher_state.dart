part of 'debt_watcher_bloc.dart';

@freezed
class DebtWatcherState with _$DebtWatcherState {
  const factory DebtWatcherState.initial() = _Initial;

  const factory DebtWatcherState.loadInProgress() = _LoadInProgress;
  const factory DebtWatcherState.loadSucess(
    List<DebtEntity> debts,
    double totalDebt,
    double totalCredit,
  ) = _LoadSucess;
  const factory DebtWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

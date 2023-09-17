part of 'bill_watcher_bloc.dart';

@freezed
class BillWatcherState with _$BillWatcherState {
  const factory BillWatcherState.initial() = _Initial;

  const factory BillWatcherState.loadInProgress() = _LoadInProgress;
  const factory BillWatcherState.loadSucess(
    List<BillEntity> bills,
  ) = _LoadSucess;
  const factory BillWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

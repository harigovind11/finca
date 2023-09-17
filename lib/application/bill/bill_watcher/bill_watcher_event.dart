part of 'bill_watcher_bloc.dart';

@freezed
class BillWatcherEvent with _$BillWatcherEvent {
  const factory BillWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory BillWatcherEvent.watchBillStarted() = _WatchBillStarted;
  const factory BillWatcherEvent.watchSubscriptionStarted() =
      _WatchSubscriptionStarted;
  const factory BillWatcherEvent.billReceived(
          Either<FirestoreFailure, List<BillEntity>> failureOrBills) =
      _TransactionReceived;
}

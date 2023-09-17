part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherEvent with _$CategoryWatcherEvent {
  const factory CategoryWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory CategoryWatcherEvent.categoryReceived(
          Either<FirestoreFailure, List<CategoryEntity>> failureOrCategories) =
      _CategoryReceived;
}

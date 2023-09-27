part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherState with _$CategoryWatcherState {
  const factory CategoryWatcherState.initial() = _Initial;

  const factory CategoryWatcherState.loadInProgress() = _LoadInProgress;
  const factory CategoryWatcherState.loadSuccess(
    List<CategoryEntity> categories,
  ) = _LoadSucess;
  const factory CategoryWatcherState.loadFailure(
      FirestoreFailure firestoreFailure) = _LoadFailure;
}

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/category/i_category.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_watcher_event.dart';
part 'category_watcher_state.dart';
part 'category_watcher_bloc.freezed.dart';

@injectable
class CategoryWatcherBloc
    extends Bloc<CategoryWatcherEvent, CategoryWatcherState> {
  final ICategoryRepository _iCategoryRepository;
  StreamSubscription<Either<FirestoreFailure, List<CategoryEntity>>>?
      _categoryStreamSubscription;
  CategoryWatcherBloc(this._iCategoryRepository) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const CategoryWatcherState.loadInProgress());
      await _categoryStreamSubscription?.cancel();
      _categoryStreamSubscription = _iCategoryRepository.watchAll().listen(
            (failureOrCategories) => add(
              CategoryWatcherEvent.categoryReceived(
                failureOrCategories,
              ),
            ),
          );
    });
    on<_CategoryReceived>((event, emit) async {
      emit(
        event.failureOrCategories.fold(
          (f) => CategoryWatcherState.loadFailure(f),
          (categories) => CategoryWatcherState.loadSucess(
            categories,
          ),
        ),
      );
    });
  }
  @override
  Future<void> close() async {
    await _categoryStreamSubscription?.cancel();
    return super.close();
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/category/i_category.dart';
import 'package:finca/domain/category/value_objects.dart';
import 'package:finca/domain/core/firestore_faillure.dart';

part 'category_form_bloc.freezed.dart';
part 'category_form_event.dart';
part 'category_form_state.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {
  final ICategoryRepository _iCategoryRepository;
  CategoryFormBloc(
    this._iCategoryRepository,
  ) : super(CategoryFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialOption.fold(
          () => state,
          (initial) => state.copyWith(
            categoryEntity: initial,
            isEditing: true,
          ),
        ),
      );
    });
    on<_CategoryNameChanged>((event, emit) {
      emit(
        state.copyWith(
          categoryEntity: state.categoryEntity.copyWith(
            categoryName: CategoryName(event.categoryNameStr),
          ),
        ),
      );
    });
    on<_CategoryIconChanged>((event, emit) {
      emit(
        state.copyWith(
          categoryEntity: state.categoryEntity.copyWith(
            categoryIcon: event.categoryIcon,
          ),
        ),
      );
    });
    on<_ColorChanged>((event, emit) {
      emit(
        state.copyWith(
          categoryEntity: state.categoryEntity.copyWith(
            color: event.color,
          ),
        ),
      );
    });
    on<_Saved>((event, emit) async {
      Either<FirestoreFailure, Unit>? failureOrSucess;
      emit(
        state.copyWith(
          isSaving: true,
          saveFailureOrSucessOption: none(),
        ),
      );
      if (state.categoryEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iCategoryRepository.update(state.categoryEntity)
            : await _iCategoryRepository.create(state.categoryEntity);
      }
      emit(
        state.copyWith(
          isSaving: false,
          saveFailureOrSucessOption: optionOf(failureOrSucess),
        ),
      );
    });
  }
}

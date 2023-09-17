part of 'category_form_bloc.dart';

@freezed
class CategoryFormState with _$CategoryFormState {
  const factory CategoryFormState({
    required CategoryEntity categoryEntity,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => CategoryFormState(
      categoryEntity: CategoryEntity.empty(),
      isEditing: false,
      isSaving: false,
      saveFailureOrSucessOption: none());
}

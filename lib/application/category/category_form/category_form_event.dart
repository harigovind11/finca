part of 'category_form_bloc.dart';

@freezed
class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.initialized(
      Option<CategoryEntity> initialOption) = _Initialized;
  const factory CategoryFormEvent.categoryNameChanged(String categoryNameStr) =
      _CategoryNameChanged;
  const factory CategoryFormEvent.categoryIconChanged(IconData categoryIcon) =
      _CategoryIconChanged;
  const factory CategoryFormEvent.colorChanged(Color color) = _ColorChanged;

  const factory CategoryFormEvent.saved() = _Saved;
}

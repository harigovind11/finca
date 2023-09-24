// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormEventCopyWith<$Res> {
  factory $CategoryFormEventCopyWith(
          CategoryFormEvent value, $Res Function(CategoryFormEvent) then) =
      _$CategoryFormEventCopyWithImpl<$Res, CategoryFormEvent>;
}

/// @nodoc
class _$CategoryFormEventCopyWithImpl<$Res, $Val extends CategoryFormEvent>
    implements $CategoryFormEventCopyWith<$Res> {
  _$CategoryFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<CategoryEntity> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialOption
          ? _value.initialOption
          : initialOption // ignore: cast_nullable_to_non_nullable
              as Option<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<CategoryEntity> initialOption;

  @override
  String toString() {
    return 'CategoryFormEvent.initialized(initialOption: $initialOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialOption, initialOption) ||
                other.initialOption == initialOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CategoryFormEvent {
  const factory _Initialized(final Option<CategoryEntity> initialOption) =
      _$_Initialized;

  Option<CategoryEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryNameChangedCopyWith<$Res> {
  factory _$$_CategoryNameChangedCopyWith(_$_CategoryNameChanged value,
          $Res Function(_$_CategoryNameChanged) then) =
      __$$_CategoryNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryNameStr});
}

/// @nodoc
class __$$_CategoryNameChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_CategoryNameChanged>
    implements _$$_CategoryNameChangedCopyWith<$Res> {
  __$$_CategoryNameChangedCopyWithImpl(_$_CategoryNameChanged _value,
      $Res Function(_$_CategoryNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryNameStr = null,
  }) {
    return _then(_$_CategoryNameChanged(
      null == categoryNameStr
          ? _value.categoryNameStr
          : categoryNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryNameChanged implements _CategoryNameChanged {
  const _$_CategoryNameChanged(this.categoryNameStr);

  @override
  final String categoryNameStr;

  @override
  String toString() {
    return 'CategoryFormEvent.categoryNameChanged(categoryNameStr: $categoryNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryNameChanged &&
            (identical(other.categoryNameStr, categoryNameStr) ||
                other.categoryNameStr == categoryNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryNameChangedCopyWith<_$_CategoryNameChanged> get copyWith =>
      __$$_CategoryNameChangedCopyWithImpl<_$_CategoryNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return categoryNameChanged(categoryNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return categoryNameChanged?.call(categoryNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryNameChanged != null) {
      return categoryNameChanged(categoryNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryNameChanged != null) {
      return categoryNameChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryNameChanged implements CategoryFormEvent {
  const factory _CategoryNameChanged(final String categoryNameStr) =
      _$_CategoryNameChanged;

  String get categoryNameStr;
  @JsonKey(ignore: true)
  _$$_CategoryNameChangedCopyWith<_$_CategoryNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryIconChangedCopyWith<$Res> {
  factory _$$_CategoryIconChangedCopyWith(_$_CategoryIconChanged value,
          $Res Function(_$_CategoryIconChanged) then) =
      __$$_CategoryIconChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({IconData categoryIcon});
}

/// @nodoc
class __$$_CategoryIconChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_CategoryIconChanged>
    implements _$$_CategoryIconChangedCopyWith<$Res> {
  __$$_CategoryIconChangedCopyWithImpl(_$_CategoryIconChanged _value,
      $Res Function(_$_CategoryIconChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIcon = null,
  }) {
    return _then(_$_CategoryIconChanged(
      null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_CategoryIconChanged implements _CategoryIconChanged {
  const _$_CategoryIconChanged(this.categoryIcon);

  @override
  final IconData categoryIcon;

  @override
  String toString() {
    return 'CategoryFormEvent.categoryIconChanged(categoryIcon: $categoryIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryIconChanged &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryIconChangedCopyWith<_$_CategoryIconChanged> get copyWith =>
      __$$_CategoryIconChangedCopyWithImpl<_$_CategoryIconChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return categoryIconChanged(categoryIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return categoryIconChanged?.call(categoryIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryIconChanged != null) {
      return categoryIconChanged(categoryIcon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryIconChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryIconChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryIconChanged != null) {
      return categoryIconChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryIconChanged implements CategoryFormEvent {
  const factory _CategoryIconChanged(final IconData categoryIcon) =
      _$_CategoryIconChanged;

  IconData get categoryIcon;
  @JsonKey(ignore: true)
  _$$_CategoryIconChangedCopyWith<_$_CategoryIconChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_ColorChanged>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_ColorChanged(
      freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'CategoryFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements CategoryFormEvent {
  const factory _ColorChanged(final Color color) = _$_ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'CategoryFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<CategoryEntity> initialOption) initialized,
    required TResult Function(String categoryNameStr) categoryNameChanged,
    required TResult Function(IconData categoryIcon) categoryIconChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<CategoryEntity> initialOption)? initialized,
    TResult? Function(String categoryNameStr)? categoryNameChanged,
    TResult? Function(IconData categoryIcon)? categoryIconChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<CategoryEntity> initialOption)? initialized,
    TResult Function(String categoryNameStr)? categoryNameChanged,
    TResult Function(IconData categoryIcon)? categoryIconChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryNameChanged value) categoryNameChanged,
    required TResult Function(_CategoryIconChanged value) categoryIconChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult? Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryNameChanged value)? categoryNameChanged,
    TResult Function(_CategoryIconChanged value)? categoryIconChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CategoryFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$CategoryFormState {
  CategoryEntity get categoryEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFormStateCopyWith<CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormStateCopyWith<$Res> {
  factory $CategoryFormStateCopyWith(
          CategoryFormState value, $Res Function(CategoryFormState) then) =
      _$CategoryFormStateCopyWithImpl<$Res, CategoryFormState>;
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class _$CategoryFormStateCopyWithImpl<$Res, $Val extends CategoryFormState>
    implements $CategoryFormStateCopyWith<$Res> {
  _$CategoryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_value.categoryEntity, (value) {
      return _then(_value.copyWith(categoryEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryFormStateCopyWith<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  factory _$$_CategoryFormStateCopyWith(_$_CategoryFormState value,
          $Res Function(_$_CategoryFormState) then) =
      __$$_CategoryFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryEntity categoryEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class __$$_CategoryFormStateCopyWithImpl<$Res>
    extends _$CategoryFormStateCopyWithImpl<$Res, _$_CategoryFormState>
    implements _$$_CategoryFormStateCopyWith<$Res> {
  __$$_CategoryFormStateCopyWithImpl(
      _$_CategoryFormState _value, $Res Function(_$_CategoryFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_CategoryFormState(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CategoryFormState implements _CategoryFormState {
  const _$_CategoryFormState(
      {required this.categoryEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final CategoryEntity categoryEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'CategoryFormState(categoryEntity: $categoryEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryFormState &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryEntity, isEditing,
      isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      __$$_CategoryFormStateCopyWithImpl<_$_CategoryFormState>(
          this, _$identity);
}

abstract class _CategoryFormState implements CategoryFormState {
  const factory _CategoryFormState(
      {required final CategoryEntity categoryEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_CategoryFormState;

  @override
  CategoryEntity get categoryEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  CategoryName get categoryName => throw _privateConstructorUsedError;
  IconData get categoryIcon => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {UniqueId id,
      CategoryName categoryName,
      IconData categoryIcon,
      Color color});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CategoryName,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$_CategoryEntityCopyWith(
          _$_CategoryEntity value, $Res Function(_$_CategoryEntity) then) =
      __$$_CategoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      CategoryName categoryName,
      IconData categoryIcon,
      Color color});
}

/// @nodoc
class __$$_CategoryEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$_CategoryEntity>
    implements _$$_CategoryEntityCopyWith<$Res> {
  __$$_CategoryEntityCopyWithImpl(
      _$_CategoryEntity _value, $Res Function(_$_CategoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? color = null,
  }) {
    return _then(_$_CategoryEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CategoryName,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_CategoryEntity extends _CategoryEntity {
  const _$_CategoryEntity(
      {required this.id,
      required this.categoryName,
      required this.categoryIcon,
      required this.color})
      : super._();

  @override
  final UniqueId id;
  @override
  final CategoryName categoryName;
  @override
  final IconData categoryIcon;
  @override
  final Color color;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, categoryName: $categoryName, categoryIcon: $categoryIcon, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, categoryName, categoryIcon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      __$$_CategoryEntityCopyWithImpl<_$_CategoryEntity>(this, _$identity);
}

abstract class _CategoryEntity extends CategoryEntity {
  const factory _CategoryEntity(
      {required final UniqueId id,
      required final CategoryName categoryName,
      required final IconData categoryIcon,
      required final Color color}) = _$_CategoryEntity;
  const _CategoryEntity._() : super._();

  @override
  UniqueId get id;
  @override
  CategoryName get categoryName;
  @override
  IconData get categoryIcon;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  @IconDataConverter()
  IconData get categoryIcon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String categoryName,
      @IconDataConverter() IconData categoryIcon,
      int color,
      @ServerTimestampConverter() FieldValue serverTimeStamb});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? color = null,
    Object? serverTimeStamb = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamb: null == serverTimeStamb
          ? _value.serverTimeStamb
          : serverTimeStamb // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String categoryName,
      @IconDataConverter() IconData categoryIcon,
      int color,
      @ServerTimestampConverter() FieldValue serverTimeStamb});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$_CategoryDto>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? color = null,
    Object? serverTimeStamb = null,
  }) {
    return _then(_$_CategoryDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamb: null == serverTimeStamb
          ? _value.serverTimeStamb
          : serverTimeStamb // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.categoryName,
      @IconDataConverter() required this.categoryIcon,
      required this.color,
      @ServerTimestampConverter() required this.serverTimeStamb})
      : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String categoryName;
  @override
  @IconDataConverter()
  final IconData categoryIcon;
  @override
  final int color;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamb;

  @override
  String toString() {
    return 'CategoryDto(id: $id, categoryName: $categoryName, categoryIcon: $categoryIcon, color: $color, serverTimeStamb: $serverTimeStamb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.serverTimeStamb, serverTimeStamb) ||
                other.serverTimeStamb == serverTimeStamb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryName, categoryIcon, color, serverTimeStamb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String categoryName,
      @IconDataConverter() required final IconData categoryIcon,
      required final int color,
      @ServerTimestampConverter()
      required final FieldValue serverTimeStamb}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get categoryName;
  @override
  @IconDataConverter()
  IconData get categoryIcon;
  @override
  int get color;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamb;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

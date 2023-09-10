// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebtDto _$DebtDtoFromJson(Map<String, dynamic> json) {
  return _DebtDto.fromJson(json);
}

/// @nodoc
mixin _$DebtDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DebtType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebtDtoCopyWith<DebtDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtDtoCopyWith<$Res> {
  factory $DebtDtoCopyWith(DebtDto value, $Res Function(DebtDto) then) =
      _$DebtDtoCopyWithImpl<$Res, DebtDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String amount,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      DebtType type});
}

/// @nodoc
class _$DebtDtoCopyWithImpl<$Res, $Val extends DebtDto>
    implements $DebtDtoCopyWith<$Res> {
  _$DebtDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DebtType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebtDtoCopyWith<$Res> implements $DebtDtoCopyWith<$Res> {
  factory _$$_DebtDtoCopyWith(
          _$_DebtDto value, $Res Function(_$_DebtDto) then) =
      __$$_DebtDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String amount,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      DebtType type});
}

/// @nodoc
class __$$_DebtDtoCopyWithImpl<$Res>
    extends _$DebtDtoCopyWithImpl<$Res, _$_DebtDto>
    implements _$$_DebtDtoCopyWith<$Res> {
  __$$_DebtDtoCopyWithImpl(_$_DebtDto _value, $Res Function(_$_DebtDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
  }) {
    return _then(_$_DebtDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DebtType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebtDto extends _DebtDto {
  const _$_DebtDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.amount,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.type})
      : super._();

  factory _$_DebtDto.fromJson(Map<String, dynamic> json) =>
      _$$_DebtDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String amount;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DebtType type;

  @override
  String toString() {
    return 'DebtDto(id: $id, amount: $amount, name: $name, description: $description, startDate: $startDate, endDate: $endDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebtDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, amount, name, description, startDate, endDate, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebtDtoCopyWith<_$_DebtDto> get copyWith =>
      __$$_DebtDtoCopyWithImpl<_$_DebtDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebtDtoToJson(
      this,
    );
  }
}

abstract class _DebtDto extends DebtDto {
  const factory _DebtDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String amount,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final DebtType type}) = _$_DebtDto;
  const _DebtDto._() : super._();

  factory _DebtDto.fromJson(Map<String, dynamic> json) = _$_DebtDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get amount;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DebtType get type;
  @override
  @JsonKey(ignore: true)
  _$$_DebtDtoCopyWith<_$_DebtDto> get copyWith =>
      throw _privateConstructorUsedError;
}

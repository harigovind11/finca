// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebtEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  DebtAmount get amount => throw _privateConstructorUsedError;
  DebtName get name => throw _privateConstructorUsedError;
  DebtDescription get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DebtType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebtEntityCopyWith<DebtEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtEntityCopyWith<$Res> {
  factory $DebtEntityCopyWith(
          DebtEntity value, $Res Function(DebtEntity) then) =
      _$DebtEntityCopyWithImpl<$Res, DebtEntity>;
  @useResult
  $Res call(
      {UniqueId id,
      DebtAmount amount,
      DebtName name,
      DebtDescription description,
      DateTime startDate,
      DateTime endDate,
      DebtType type});
}

/// @nodoc
class _$DebtEntityCopyWithImpl<$Res, $Val extends DebtEntity>
    implements $DebtEntityCopyWith<$Res> {
  _$DebtEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as DebtAmount,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DebtName,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as DebtDescription,
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
abstract class _$$_DebtEntityCopyWith<$Res>
    implements $DebtEntityCopyWith<$Res> {
  factory _$$_DebtEntityCopyWith(
          _$_DebtEntity value, $Res Function(_$_DebtEntity) then) =
      __$$_DebtEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      DebtAmount amount,
      DebtName name,
      DebtDescription description,
      DateTime startDate,
      DateTime endDate,
      DebtType type});
}

/// @nodoc
class __$$_DebtEntityCopyWithImpl<$Res>
    extends _$DebtEntityCopyWithImpl<$Res, _$_DebtEntity>
    implements _$$_DebtEntityCopyWith<$Res> {
  __$$_DebtEntityCopyWithImpl(
      _$_DebtEntity _value, $Res Function(_$_DebtEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? type = null,
  }) {
    return _then(_$_DebtEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as DebtAmount,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DebtName,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as DebtDescription,
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

class _$_DebtEntity extends _DebtEntity {
  const _$_DebtEntity(
      {required this.id,
      required this.amount,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.type})
      : super._();

  @override
  final UniqueId id;
  @override
  final DebtAmount amount;
  @override
  final DebtName name;
  @override
  final DebtDescription description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DebtType type;

  @override
  String toString() {
    return 'DebtEntity(id: $id, amount: $amount, name: $name, description: $description, startDate: $startDate, endDate: $endDate, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebtEntity &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, amount, name, description, startDate, endDate, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebtEntityCopyWith<_$_DebtEntity> get copyWith =>
      __$$_DebtEntityCopyWithImpl<_$_DebtEntity>(this, _$identity);
}

abstract class _DebtEntity extends DebtEntity {
  const factory _DebtEntity(
      {required final UniqueId id,
      required final DebtAmount amount,
      required final DebtName name,
      required final DebtDescription description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final DebtType type}) = _$_DebtEntity;
  const _DebtEntity._() : super._();

  @override
  UniqueId get id;
  @override
  DebtAmount get amount;
  @override
  DebtName get name;
  @override
  DebtDescription get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DebtType get type;
  @override
  @JsonKey(ignore: true)
  _$$_DebtEntityCopyWith<_$_DebtEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

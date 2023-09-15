// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BillEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  BillName get billName => throw _privateConstructorUsedError;
  BillAmount get billAmount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  BillType get billType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillEntityCopyWith<BillEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillEntityCopyWith<$Res> {
  factory $BillEntityCopyWith(
          BillEntity value, $Res Function(BillEntity) then) =
      _$BillEntityCopyWithImpl<$Res, BillEntity>;
  @useResult
  $Res call(
      {UniqueId id,
      BillName billName,
      BillAmount billAmount,
      DateTime date,
      BillType billType});
}

/// @nodoc
class _$BillEntityCopyWithImpl<$Res, $Val extends BillEntity>
    implements $BillEntityCopyWith<$Res> {
  _$BillEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? billName = null,
    Object? billAmount = null,
    Object? date = null,
    Object? billType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      billName: null == billName
          ? _value.billName
          : billName // ignore: cast_nullable_to_non_nullable
              as BillName,
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as BillAmount,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillEntityCopyWith<$Res>
    implements $BillEntityCopyWith<$Res> {
  factory _$$_BillEntityCopyWith(
          _$_BillEntity value, $Res Function(_$_BillEntity) then) =
      __$$_BillEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      BillName billName,
      BillAmount billAmount,
      DateTime date,
      BillType billType});
}

/// @nodoc
class __$$_BillEntityCopyWithImpl<$Res>
    extends _$BillEntityCopyWithImpl<$Res, _$_BillEntity>
    implements _$$_BillEntityCopyWith<$Res> {
  __$$_BillEntityCopyWithImpl(
      _$_BillEntity _value, $Res Function(_$_BillEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? billName = null,
    Object? billAmount = null,
    Object? date = null,
    Object? billType = null,
  }) {
    return _then(_$_BillEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      billName: null == billName
          ? _value.billName
          : billName // ignore: cast_nullable_to_non_nullable
              as BillName,
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as BillAmount,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
    ));
  }
}

/// @nodoc

class _$_BillEntity extends _BillEntity {
  const _$_BillEntity(
      {required this.id,
      required this.billName,
      required this.billAmount,
      required this.date,
      required this.billType})
      : super._();

  @override
  final UniqueId id;
  @override
  final BillName billName;
  @override
  final BillAmount billAmount;
  @override
  final DateTime date;
  @override
  final BillType billType;

  @override
  String toString() {
    return 'BillEntity(id: $id, billName: $billName, billAmount: $billAmount, date: $date, billType: $billType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.billName, billName) ||
                other.billName == billName) &&
            (identical(other.billAmount, billAmount) ||
                other.billAmount == billAmount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.billType, billType) ||
                other.billType == billType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, billName, billAmount, date, billType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillEntityCopyWith<_$_BillEntity> get copyWith =>
      __$$_BillEntityCopyWithImpl<_$_BillEntity>(this, _$identity);
}

abstract class _BillEntity extends BillEntity {
  const factory _BillEntity(
      {required final UniqueId id,
      required final BillName billName,
      required final BillAmount billAmount,
      required final DateTime date,
      required final BillType billType}) = _$_BillEntity;
  const _BillEntity._() : super._();

  @override
  UniqueId get id;
  @override
  BillName get billName;
  @override
  BillAmount get billAmount;
  @override
  DateTime get date;
  @override
  BillType get billType;
  @override
  @JsonKey(ignore: true)
  _$$_BillEntityCopyWith<_$_BillEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

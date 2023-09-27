// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  TransactionAmount get amount => throw _privateConstructorUsedError;
  TransactionPurpose get purpose => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  AccountName get accountName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(
          TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call(
      {UniqueId id,
      TransactionAmount amount,
      TransactionPurpose purpose,
      DateTime date,
      TransactionType type,
      AccountName accountName});
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as TransactionPurpose,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as AccountName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionEntityCopyWith<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  factory _$$_TransactionEntityCopyWith(_$_TransactionEntity value,
          $Res Function(_$_TransactionEntity) then) =
      __$$_TransactionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      TransactionAmount amount,
      TransactionPurpose purpose,
      DateTime date,
      TransactionType type,
      AccountName accountName});
}

/// @nodoc
class __$$_TransactionEntityCopyWithImpl<$Res>
    extends _$TransactionEntityCopyWithImpl<$Res, _$_TransactionEntity>
    implements _$$_TransactionEntityCopyWith<$Res> {
  __$$_TransactionEntityCopyWithImpl(
      _$_TransactionEntity _value, $Res Function(_$_TransactionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
    Object? accountName = null,
  }) {
    return _then(_$_TransactionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as TransactionPurpose,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as AccountName,
    ));
  }
}

/// @nodoc

class _$_TransactionEntity extends _TransactionEntity {
  const _$_TransactionEntity(
      {required this.id,
      required this.amount,
      required this.purpose,
      required this.date,
      required this.type,
      required this.accountName})
      : super._();

  @override
  final UniqueId id;
  @override
  final TransactionAmount amount;
  @override
  final TransactionPurpose purpose;
  @override
  final DateTime date;
  @override
  final TransactionType type;
  @override
  final AccountName accountName;

  @override
  String toString() {
    return 'TransactionEntity(id: $id, amount: $amount, purpose: $purpose, date: $date, type: $type, accountName: $accountName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, purpose, date, type, accountName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      __$$_TransactionEntityCopyWithImpl<_$_TransactionEntity>(
          this, _$identity);
}

abstract class _TransactionEntity extends TransactionEntity {
  const factory _TransactionEntity(
      {required final UniqueId id,
      required final TransactionAmount amount,
      required final TransactionPurpose purpose,
      required final DateTime date,
      required final TransactionType type,
      required final AccountName accountName}) = _$_TransactionEntity;
  const _TransactionEntity._() : super._();

  @override
  UniqueId get id;
  @override
  TransactionAmount get amount;
  @override
  TransactionPurpose get purpose;
  @override
  DateTime get date;
  @override
  TransactionType get type;
  @override
  AccountName get accountName;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
